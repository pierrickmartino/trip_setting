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
  TextColumn get label => text().nullable()();
  DateTimeColumn get creationDate => dateTime().nullable()();
}

@UseMoor(
  tables: [Countries],
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
          for (final initCountry in countryList) {
            await into(countries).insert(CountriesCompanion(
                label: Value(initCountry),
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

  Future<dynamic> deleteCountry(Country _country) async {
    await deleteRow(cs, countries, _country);
  }
}
