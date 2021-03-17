import 'dart:convert';

import 'package:moor/moor.dart';
import 'package:trip_setting/constant/country.dart';
import 'package:trip_setting/constant/weather.dart';
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

  IntColumn get januaryMin => integer().nullable()();
  IntColumn get januaryMax => integer().nullable()();
  RealColumn get januaryAvg => real().nullable()();
  IntColumn get januaryPrec => integer().nullable()();

  IntColumn get februaryMin => integer().nullable()();
  IntColumn get februaryMax => integer().nullable()();
  RealColumn get februaryAvg => real().nullable()();
  IntColumn get februaryPrec => integer().nullable()();

  IntColumn get marchMin => integer().nullable()();
  IntColumn get marchMax => integer().nullable()();
  RealColumn get marchAvg => real().nullable()();
  IntColumn get marchPrec => integer().nullable()();

  IntColumn get aprilMin => integer().nullable()();
  IntColumn get aprilMax => integer().nullable()();
  RealColumn get aprilAvg => real().nullable()();
  IntColumn get aprilPrec => integer().nullable()();

  IntColumn get mayMin => integer().nullable()();
  IntColumn get mayMax => integer().nullable()();
  RealColumn get mayAvg => real().nullable()();
  IntColumn get mayPrec => integer().nullable()();

  IntColumn get juneMin => integer().nullable()();
  IntColumn get juneMax => integer().nullable()();
  RealColumn get juneAvg => real().nullable()();
  IntColumn get junePrec => integer().nullable()();

  IntColumn get julyMin => integer().nullable()();
  IntColumn get julyMax => integer().nullable()();
  RealColumn get julyAvg => real().nullable()();
  IntColumn get julyPrec => integer().nullable()();

  IntColumn get augustMin => integer().nullable()();
  IntColumn get augustMax => integer().nullable()();
  RealColumn get augustAvg => real().nullable()();
  IntColumn get augustPrec => integer().nullable()();

  IntColumn get septemberMin => integer().nullable()();
  IntColumn get septemberMax => integer().nullable()();
  RealColumn get septemberAvg => real().nullable()();
  IntColumn get septemberPrec => integer().nullable()();

  IntColumn get octoberMin => integer().nullable()();
  IntColumn get octoberMax => integer().nullable()();
  RealColumn get octoberAvg => real().nullable()();
  IntColumn get octoberPrec => integer().nullable()();

  IntColumn get novemberMin => integer().nullable()();
  IntColumn get novemberMax => integer().nullable()();
  RealColumn get novemberAvg => real().nullable()();
  IntColumn get novemberPrec => integer().nullable()();

  IntColumn get decemberMin => integer().nullable()();
  IntColumn get decemberMax => integer().nullable()();
  RealColumn get decemberAvg => real().nullable()();
  IntColumn get decemberPrec => integer().nullable()();

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
          // init of countries in database based on country.json
          List<dynamic> _itemsCountry = [];
          final _dataCountry = json
              .decode(country); // https://www.convertcsv.com/csv-to-json.htm
          _itemsCountry = _dataCountry['items'];

          for (var i = 0; i < _itemsCountry.length; i++) {
            await into(countries).insert(CountriesCompanion(
                reference: Value(_itemsCountry[i]['Reference']),
                label: Value(_itemsCountry[i]['Country']),
                security: Value(_itemsCountry[i]['Security']),
                currency: Value(_itemsCountry[i]['Currency']),
                creationDate: Value(DateTime.now())));
          }

          // init of weathers in database based on weather.json
          List<dynamic> _itemsWeather = [];
          final _dataWeather = json
              .decode(weather); // https://www.convertcsv.com/csv-to-json.htm
          _itemsWeather = _dataWeather['items'];

          for (var i = 0; i < _itemsWeather.length; i++) {
            await into(weathers).insert(WeathersCompanion(
                country: Value(_itemsWeather[i]['Reference']),
                januaryMin: Value(_itemsWeather[i]['JanuaryMin']),
                januaryMax: Value(_itemsWeather[i]['JanuaryMax']),
                januaryAvg: Value(_itemsWeather[i]['JanuaryAvg']),
                januaryPrec: Value(_itemsWeather[i]['JanuaryPrec']),
                februaryMin: Value(_itemsWeather[i]['FebruaryMin']),
                februaryMax: Value(_itemsWeather[i]['FebruaryMax']),
                februaryAvg: Value(_itemsWeather[i]['FebruaryAvg']),
                februaryPrec: Value(_itemsWeather[i]['FebruaryPrec']),
                marchMin: Value(_itemsWeather[i]['MarchMin']),
                marchMax: Value(_itemsWeather[i]['MarchMax']),
                marchAvg: Value(_itemsWeather[i]['MarchAvg']),
                marchPrec: Value(_itemsWeather[i]['MarchPrec']),
                aprilMin: Value(_itemsWeather[i]['AprilMin']),
                aprilMax: Value(_itemsWeather[i]['AprilMax']),
                aprilAvg: Value(_itemsWeather[i]['AprilAvg']),
                aprilPrec: Value(_itemsWeather[i]['AprilPrec']),
                mayMin: Value(_itemsWeather[i]['MayMin']),
                mayMax: Value(_itemsWeather[i]['MayMax']),
                mayAvg: Value(_itemsWeather[i]['MayAvg']),
                mayPrec: Value(_itemsWeather[i]['MayPrec']),
                juneMin: Value(_itemsWeather[i]['JuneMin']),
                juneMax: Value(_itemsWeather[i]['JuneMax']),
                juneAvg: Value(_itemsWeather[i]['JuneAvg']),
                junePrec: Value(_itemsWeather[i]['JunePrec']),
                julyMin: Value(_itemsWeather[i]['JulyMin']),
                julyMax: Value(_itemsWeather[i]['JulyMax']),
                julyAvg: Value(_itemsWeather[i]['JulyAvg']),
                julyPrec: Value(_itemsWeather[i]['JulyPrec']),
                augustMin: Value(_itemsWeather[i]['AugustMin']),
                augustMax: Value(_itemsWeather[i]['AugustMax']),
                augustAvg: Value(_itemsWeather[i]['AugustAvg']),
                augustPrec: Value(_itemsWeather[i]['AugustPrec']),
                septemberMin: Value(_itemsWeather[i]['SeptemberMin']),
                septemberMax: Value(_itemsWeather[i]['SeptemberMax']),
                septemberAvg: Value(_itemsWeather[i]['SeptemberAvg']),
                septemberPrec: Value(_itemsWeather[i]['SeptemberPrec']),
                octoberMin: Value(_itemsWeather[i]['OctoberMin']),
                octoberMax: Value(_itemsWeather[i]['OctoberMax']),
                octoberAvg: Value(_itemsWeather[i]['OctoberAvg']),
                octoberPrec: Value(_itemsWeather[i]['OctoberPrec']),
                novemberMin: Value(_itemsWeather[i]['NovemberMin']),
                novemberMax: Value(_itemsWeather[i]['NovemberMax']),
                novemberAvg: Value(_itemsWeather[i]['NovemberAvg']),
                novemberPrec: Value(_itemsWeather[i]['NovemberPrec']),
                decemberMin: Value(_itemsWeather[i]['DecemberMin']),
                decemberMax: Value(_itemsWeather[i]['DecemberMax']),
                decemberAvg: Value(_itemsWeather[i]['DecemberAvg']),
                decemberPrec: Value(_itemsWeather[i]['DecemberPrec']),

                // label: Value(_itemsWeather[i]['Country']),
                // security: Value(_itemsWeather[i]['Security']),
                // currency: Value(_itemsWeather[i]['Currency']),

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
