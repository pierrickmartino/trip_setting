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

  Future<void> insertCountry(
    String label,
    DateTime creationDate,
  ) async {
    await db.insertCountry(
      CountriesCompanion(
        label: moor.Value(label),
        creationDate: moor.Value(creationDate),
      ),
    );
    emit(db.cs);
  }

  Future<void> deleteCountry(Country _country) async {
    await db.deleteCountry(_country);
    emit(db.cs);
  }

  Future<void> updateCountry(Country _country) async {
    await db.updateCountry(_country);
    emit(db.cs);
  }

  void init() {
    emit(db.cs);
  }
}
