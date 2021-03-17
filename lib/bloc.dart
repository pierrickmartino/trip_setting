import 'package:bloc/bloc.dart';
import 'package:moor/moor.dart' as moor;
import 'package:undo/undo.dart';

import 'database/database.dart';

class ApplicationBloc extends Cubit<ChangeStack> {
  ApplicationBloc(this.db) : super(db.cs) {
    init();
  }

  final Database db;

  Stream<List<Country>> get getCountries => db.watchAllCountries;
  Stream<List<WeatherWithCountry>> getWeatherWithCountry(Country _country) {
    return db.watchWeatherInCountry(_country);
  }

  Future<void> insertCountry(
    String label,
    String currency,
    int security,
    DateTime creationDate,
  ) async {
    await db.insertCountry(
      CountriesCompanion(
        label: moor.Value(label),
        currency: moor.Value(currency),
        security: moor.Value(security),
        creationDate: moor.Value(creationDate),
      ),
    );
    emit(db.cs);
  }

  // Future<void> deleteCountry(Country _country) async {
  //   await db.deleteCountry(_country);
  //   emit(db.cs);
  // }

  Future<void> updateCountry(Country _country) async {
    await db.updateCountry(_country);
    emit(db.cs);
  }

  Future<void> updateWeather(Weather _weather) async {
    await db.updateWeather(_weather);
    emit(db.cs);
  }

  void init() {
    emit(db.cs);
  }
}
