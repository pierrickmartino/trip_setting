import 'dart:convert';

import 'package:moor/moor.dart';
import 'package:trip_setting/constant/country.dart';
import 'package:undo/undo.dart';

import 'db_utils.dart';

export 'shared.dart';

part 'database.g.dart';

@DataClassName('Country')
class Countries extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get id => integer().autoIncrement()();
  IntColumn get reference => integer()();
  TextColumn get label => text().nullable()();
  TextColumn get currency => text().nullable()();
  IntColumn get security => integer().nullable()();
  DateTimeColumn get creationDate => dateTime().nullable()();
}

@DataClassName('Weather')
class Weathers extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get id => integer().autoIncrement()();
  IntColumn get country => integer()
      .nullable()
      .customConstraint('NULL REFERENCES countries(reference)')();
  TextColumn get month => text().nullable()();
  IntColumn get minTemp => integer().nullable()();
  IntColumn get maxTemp => integer().nullable()();
  IntColumn get avgTemp => integer().nullable()();
  IntColumn get precipitation => integer().nullable()();
  DateTimeColumn get creationDate => dateTime().nullable()();
}

class WeatherWithCountry {
  WeatherWithCountry(this.weather, this.country);

  final Weather weather;
  final Country country;
}

@UseMoor(
  tables: [Countries, Weathers],
)
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);
  final cs = ChangeStack();
  // : super(FlutterQueryExecutor.inDatabaseFolder(
  //       path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from == 1) {
          await m.addColumn(countries, countries.creationDate);
        }
      },
      beforeOpen: (details) async {
        if (details.wasCreated) {
          // init of countries in database based on country.dart
          // for (final initCountry in countryList) {
          //   await into(countries).insert(CountriesCompanion(
          //       label: Value(initCountry),
          //       creationDate: Value(DateTime.now())));
          // }
          List<dynamic> _items = [];
          final data = json.decode(country);
          _items = data['items'];

          for (var i = 0; i < _items.length; i++) {
            await into(countries).insert(CountriesCompanion(
                reference: Value(_items[i]['Reference']),
                label: Value(_items[i]['Country']),
                security: Value(_items[i]['Security']),
                creationDate: Value(DateTime.now())));
          }

          // await into(parameters).insert(ParametersCompanion(
          //     originCity: const Value('INIT'),
          //     creationDate: Value(DateTime.now())));
        }
      },
    );
  }

  Stream<List<Country>> get watchAllCountries => select(countries).watch();

  Future<dynamic> insertCountry(CountriesCompanion _country) async {
    await into(countries).insert(_country);
  }

  Future<dynamic> updateCountry(Country _country) async {
    return updateRow(cs, countries, _country);
  }

  /// Watches all Weather in the given [_country]. If the [_country] is null, all
  /// entries will be shown instead.
  Stream<List<WeatherWithCountry>> watchWeatherInCountry(Country _country) {
    final query = select(weathers).join(
      [innerJoin(countries, countries.reference.equalsExp(weathers.country))],
    );

    if (_country != null) {
      query.where(weathers.country.equals(_country.reference));
    } else {
      query.where(isNotNull(weathers.id));
    }

    return query.watch().map((rows) {
      // read both the transaction and the associated category for each row
      return rows.map((row) {
        return WeatherWithCountry(
          row.readTable(weathers),
          row.readTable(countries),
        );
      }).toList();
    });
  }

  // Future<dynamic> deleteCountry(Country _country) async {
  //   await deleteRow(cs, countries, _country);
  // }
}
