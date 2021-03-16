// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Country extends DataClass implements Insertable<Country> {
  final int id;
  final int reference;
  final String label;
  final String currency;
  final int security;
  final DateTime creationDate;
  Country(
      {@required this.id,
      @required this.reference,
      this.label,
      this.currency,
      this.security,
      this.creationDate});
  factory Country.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Country(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      reference:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}reference']),
      label:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}label']),
      currency: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}currency']),
      security:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}security']),
      creationDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || reference != null) {
      map['reference'] = Variable<int>(reference);
    }
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || currency != null) {
      map['currency'] = Variable<String>(currency);
    }
    if (!nullToAbsent || security != null) {
      map['security'] = Variable<int>(security);
    }
    if (!nullToAbsent || creationDate != null) {
      map['creation_date'] = Variable<DateTime>(creationDate);
    }
    return map;
  }

  CountriesCompanion toCompanion(bool nullToAbsent) {
    return CountriesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      reference: reference == null && nullToAbsent
          ? const Value.absent()
          : Value(reference),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      currency: currency == null && nullToAbsent
          ? const Value.absent()
          : Value(currency),
      security: security == null && nullToAbsent
          ? const Value.absent()
          : Value(security),
      creationDate: creationDate == null && nullToAbsent
          ? const Value.absent()
          : Value(creationDate),
    );
  }

  factory Country.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Country(
      id: serializer.fromJson<int>(json['id']),
      reference: serializer.fromJson<int>(json['reference']),
      label: serializer.fromJson<String>(json['label']),
      currency: serializer.fromJson<String>(json['currency']),
      security: serializer.fromJson<int>(json['security']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'reference': serializer.toJson<int>(reference),
      'label': serializer.toJson<String>(label),
      'currency': serializer.toJson<String>(currency),
      'security': serializer.toJson<int>(security),
      'creationDate': serializer.toJson<DateTime>(creationDate),
    };
  }

  Country copyWith(
          {int id,
          int reference,
          String label,
          String currency,
          int security,
          DateTime creationDate}) =>
      Country(
        id: id ?? this.id,
        reference: reference ?? this.reference,
        label: label ?? this.label,
        currency: currency ?? this.currency,
        security: security ?? this.security,
        creationDate: creationDate ?? this.creationDate,
      );
  @override
  String toString() {
    return (StringBuffer('Country(')
          ..write('id: $id, ')
          ..write('reference: $reference, ')
          ..write('label: $label, ')
          ..write('currency: $currency, ')
          ..write('security: $security, ')
          ..write('creationDate: $creationDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          reference.hashCode,
          $mrjc(
              label.hashCode,
              $mrjc(currency.hashCode,
                  $mrjc(security.hashCode, creationDate.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Country &&
          other.id == this.id &&
          other.reference == this.reference &&
          other.label == this.label &&
          other.currency == this.currency &&
          other.security == this.security &&
          other.creationDate == this.creationDate);
}

class CountriesCompanion extends UpdateCompanion<Country> {
  final Value<int> id;
  final Value<int> reference;
  final Value<String> label;
  final Value<String> currency;
  final Value<int> security;
  final Value<DateTime> creationDate;
  const CountriesCompanion({
    this.id = const Value.absent(),
    this.reference = const Value.absent(),
    this.label = const Value.absent(),
    this.currency = const Value.absent(),
    this.security = const Value.absent(),
    this.creationDate = const Value.absent(),
  });
  CountriesCompanion.insert({
    this.id = const Value.absent(),
    @required int reference,
    this.label = const Value.absent(),
    this.currency = const Value.absent(),
    this.security = const Value.absent(),
    this.creationDate = const Value.absent(),
  }) : reference = Value(reference);
  static Insertable<Country> custom({
    Expression<int> id,
    Expression<int> reference,
    Expression<String> label,
    Expression<String> currency,
    Expression<int> security,
    Expression<DateTime> creationDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (reference != null) 'reference': reference,
      if (label != null) 'label': label,
      if (currency != null) 'currency': currency,
      if (security != null) 'security': security,
      if (creationDate != null) 'creation_date': creationDate,
    });
  }

  CountriesCompanion copyWith(
      {Value<int> id,
      Value<int> reference,
      Value<String> label,
      Value<String> currency,
      Value<int> security,
      Value<DateTime> creationDate}) {
    return CountriesCompanion(
      id: id ?? this.id,
      reference: reference ?? this.reference,
      label: label ?? this.label,
      currency: currency ?? this.currency,
      security: security ?? this.security,
      creationDate: creationDate ?? this.creationDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (reference.present) {
      map['reference'] = Variable<int>(reference.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (security.present) {
      map['security'] = Variable<int>(security.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CountriesCompanion(')
          ..write('id: $id, ')
          ..write('reference: $reference, ')
          ..write('label: $label, ')
          ..write('currency: $currency, ')
          ..write('security: $security, ')
          ..write('creationDate: $creationDate')
          ..write(')'))
        .toString();
  }
}

class $CountriesTable extends Countries
    with TableInfo<$CountriesTable, Country> {
  final GeneratedDatabase _db;
  final String _alias;
  $CountriesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _referenceMeta = const VerificationMeta('reference');
  GeneratedIntColumn _reference;
  @override
  GeneratedIntColumn get reference => _reference ??= _constructReference();
  GeneratedIntColumn _constructReference() {
    return GeneratedIntColumn(
      'reference',
      $tableName,
      false,
    );
  }

  final VerificationMeta _labelMeta = const VerificationMeta('label');
  GeneratedTextColumn _label;
  @override
  GeneratedTextColumn get label => _label ??= _constructLabel();
  GeneratedTextColumn _constructLabel() {
    return GeneratedTextColumn(
      'label',
      $tableName,
      true,
    );
  }

  final VerificationMeta _currencyMeta = const VerificationMeta('currency');
  GeneratedTextColumn _currency;
  @override
  GeneratedTextColumn get currency => _currency ??= _constructCurrency();
  GeneratedTextColumn _constructCurrency() {
    return GeneratedTextColumn(
      'currency',
      $tableName,
      true,
    );
  }

  final VerificationMeta _securityMeta = const VerificationMeta('security');
  GeneratedIntColumn _security;
  @override
  GeneratedIntColumn get security => _security ??= _constructSecurity();
  GeneratedIntColumn _constructSecurity() {
    return GeneratedIntColumn(
      'security',
      $tableName,
      true,
    );
  }

  final VerificationMeta _creationDateMeta =
      const VerificationMeta('creationDate');
  GeneratedDateTimeColumn _creationDate;
  @override
  GeneratedDateTimeColumn get creationDate =>
      _creationDate ??= _constructCreationDate();
  GeneratedDateTimeColumn _constructCreationDate() {
    return GeneratedDateTimeColumn(
      'creation_date',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, reference, label, currency, security, creationDate];
  @override
  $CountriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'countries';
  @override
  final String actualTableName = 'countries';
  @override
  VerificationContext validateIntegrity(Insertable<Country> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('reference')) {
      context.handle(_referenceMeta,
          reference.isAcceptableOrUnknown(data['reference'], _referenceMeta));
    } else if (isInserting) {
      context.missing(_referenceMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label'], _labelMeta));
    }
    if (data.containsKey('currency')) {
      context.handle(_currencyMeta,
          currency.isAcceptableOrUnknown(data['currency'], _currencyMeta));
    }
    if (data.containsKey('security')) {
      context.handle(_securityMeta,
          security.isAcceptableOrUnknown(data['security'], _securityMeta));
    }
    if (data.containsKey('creation_date')) {
      context.handle(
          _creationDateMeta,
          creationDate.isAcceptableOrUnknown(
              data['creation_date'], _creationDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Country map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Country.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CountriesTable createAlias(String alias) {
    return $CountriesTable(_db, alias);
  }
}

class Weather extends DataClass implements Insertable<Weather> {
  final int id;
  final int country;
  final String month;
  final int minTemp;
  final int maxTemp;
  final int avgTemp;
  final int precipitation;
  final DateTime creationDate;
  Weather(
      {@required this.id,
      this.country,
      this.month,
      this.minTemp,
      this.maxTemp,
      this.avgTemp,
      this.precipitation,
      this.creationDate});
  factory Weather.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Weather(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      country:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}country']),
      month:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}month']),
      minTemp:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}min_temp']),
      maxTemp:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}max_temp']),
      avgTemp:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}avg_temp']),
      precipitation: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}precipitation']),
      creationDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<int>(country);
    }
    if (!nullToAbsent || month != null) {
      map['month'] = Variable<String>(month);
    }
    if (!nullToAbsent || minTemp != null) {
      map['min_temp'] = Variable<int>(minTemp);
    }
    if (!nullToAbsent || maxTemp != null) {
      map['max_temp'] = Variable<int>(maxTemp);
    }
    if (!nullToAbsent || avgTemp != null) {
      map['avg_temp'] = Variable<int>(avgTemp);
    }
    if (!nullToAbsent || precipitation != null) {
      map['precipitation'] = Variable<int>(precipitation);
    }
    if (!nullToAbsent || creationDate != null) {
      map['creation_date'] = Variable<DateTime>(creationDate);
    }
    return map;
  }

  WeathersCompanion toCompanion(bool nullToAbsent) {
    return WeathersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      month:
          month == null && nullToAbsent ? const Value.absent() : Value(month),
      minTemp: minTemp == null && nullToAbsent
          ? const Value.absent()
          : Value(minTemp),
      maxTemp: maxTemp == null && nullToAbsent
          ? const Value.absent()
          : Value(maxTemp),
      avgTemp: avgTemp == null && nullToAbsent
          ? const Value.absent()
          : Value(avgTemp),
      precipitation: precipitation == null && nullToAbsent
          ? const Value.absent()
          : Value(precipitation),
      creationDate: creationDate == null && nullToAbsent
          ? const Value.absent()
          : Value(creationDate),
    );
  }

  factory Weather.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Weather(
      id: serializer.fromJson<int>(json['id']),
      country: serializer.fromJson<int>(json['country']),
      month: serializer.fromJson<String>(json['month']),
      minTemp: serializer.fromJson<int>(json['minTemp']),
      maxTemp: serializer.fromJson<int>(json['maxTemp']),
      avgTemp: serializer.fromJson<int>(json['avgTemp']),
      precipitation: serializer.fromJson<int>(json['precipitation']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'country': serializer.toJson<int>(country),
      'month': serializer.toJson<String>(month),
      'minTemp': serializer.toJson<int>(minTemp),
      'maxTemp': serializer.toJson<int>(maxTemp),
      'avgTemp': serializer.toJson<int>(avgTemp),
      'precipitation': serializer.toJson<int>(precipitation),
      'creationDate': serializer.toJson<DateTime>(creationDate),
    };
  }

  Weather copyWith(
          {int id,
          int country,
          String month,
          int minTemp,
          int maxTemp,
          int avgTemp,
          int precipitation,
          DateTime creationDate}) =>
      Weather(
        id: id ?? this.id,
        country: country ?? this.country,
        month: month ?? this.month,
        minTemp: minTemp ?? this.minTemp,
        maxTemp: maxTemp ?? this.maxTemp,
        avgTemp: avgTemp ?? this.avgTemp,
        precipitation: precipitation ?? this.precipitation,
        creationDate: creationDate ?? this.creationDate,
      );
  @override
  String toString() {
    return (StringBuffer('Weather(')
          ..write('id: $id, ')
          ..write('country: $country, ')
          ..write('month: $month, ')
          ..write('minTemp: $minTemp, ')
          ..write('maxTemp: $maxTemp, ')
          ..write('avgTemp: $avgTemp, ')
          ..write('precipitation: $precipitation, ')
          ..write('creationDate: $creationDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          country.hashCode,
          $mrjc(
              month.hashCode,
              $mrjc(
                  minTemp.hashCode,
                  $mrjc(
                      maxTemp.hashCode,
                      $mrjc(
                          avgTemp.hashCode,
                          $mrjc(precipitation.hashCode,
                              creationDate.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Weather &&
          other.id == this.id &&
          other.country == this.country &&
          other.month == this.month &&
          other.minTemp == this.minTemp &&
          other.maxTemp == this.maxTemp &&
          other.avgTemp == this.avgTemp &&
          other.precipitation == this.precipitation &&
          other.creationDate == this.creationDate);
}

class WeathersCompanion extends UpdateCompanion<Weather> {
  final Value<int> id;
  final Value<int> country;
  final Value<String> month;
  final Value<int> minTemp;
  final Value<int> maxTemp;
  final Value<int> avgTemp;
  final Value<int> precipitation;
  final Value<DateTime> creationDate;
  const WeathersCompanion({
    this.id = const Value.absent(),
    this.country = const Value.absent(),
    this.month = const Value.absent(),
    this.minTemp = const Value.absent(),
    this.maxTemp = const Value.absent(),
    this.avgTemp = const Value.absent(),
    this.precipitation = const Value.absent(),
    this.creationDate = const Value.absent(),
  });
  WeathersCompanion.insert({
    this.id = const Value.absent(),
    this.country = const Value.absent(),
    this.month = const Value.absent(),
    this.minTemp = const Value.absent(),
    this.maxTemp = const Value.absent(),
    this.avgTemp = const Value.absent(),
    this.precipitation = const Value.absent(),
    this.creationDate = const Value.absent(),
  });
  static Insertable<Weather> custom({
    Expression<int> id,
    Expression<int> country,
    Expression<String> month,
    Expression<int> minTemp,
    Expression<int> maxTemp,
    Expression<int> avgTemp,
    Expression<int> precipitation,
    Expression<DateTime> creationDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (country != null) 'country': country,
      if (month != null) 'month': month,
      if (minTemp != null) 'min_temp': minTemp,
      if (maxTemp != null) 'max_temp': maxTemp,
      if (avgTemp != null) 'avg_temp': avgTemp,
      if (precipitation != null) 'precipitation': precipitation,
      if (creationDate != null) 'creation_date': creationDate,
    });
  }

  WeathersCompanion copyWith(
      {Value<int> id,
      Value<int> country,
      Value<String> month,
      Value<int> minTemp,
      Value<int> maxTemp,
      Value<int> avgTemp,
      Value<int> precipitation,
      Value<DateTime> creationDate}) {
    return WeathersCompanion(
      id: id ?? this.id,
      country: country ?? this.country,
      month: month ?? this.month,
      minTemp: minTemp ?? this.minTemp,
      maxTemp: maxTemp ?? this.maxTemp,
      avgTemp: avgTemp ?? this.avgTemp,
      precipitation: precipitation ?? this.precipitation,
      creationDate: creationDate ?? this.creationDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (country.present) {
      map['country'] = Variable<int>(country.value);
    }
    if (month.present) {
      map['month'] = Variable<String>(month.value);
    }
    if (minTemp.present) {
      map['min_temp'] = Variable<int>(minTemp.value);
    }
    if (maxTemp.present) {
      map['max_temp'] = Variable<int>(maxTemp.value);
    }
    if (avgTemp.present) {
      map['avg_temp'] = Variable<int>(avgTemp.value);
    }
    if (precipitation.present) {
      map['precipitation'] = Variable<int>(precipitation.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WeathersCompanion(')
          ..write('id: $id, ')
          ..write('country: $country, ')
          ..write('month: $month, ')
          ..write('minTemp: $minTemp, ')
          ..write('maxTemp: $maxTemp, ')
          ..write('avgTemp: $avgTemp, ')
          ..write('precipitation: $precipitation, ')
          ..write('creationDate: $creationDate')
          ..write(')'))
        .toString();
  }
}

class $WeathersTable extends Weathers with TableInfo<$WeathersTable, Weather> {
  final GeneratedDatabase _db;
  final String _alias;
  $WeathersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _countryMeta = const VerificationMeta('country');
  GeneratedIntColumn _country;
  @override
  GeneratedIntColumn get country => _country ??= _constructCountry();
  GeneratedIntColumn _constructCountry() {
    return GeneratedIntColumn('country', $tableName, true,
        $customConstraints: 'NULL REFERENCES countries(reference)');
  }

  final VerificationMeta _monthMeta = const VerificationMeta('month');
  GeneratedTextColumn _month;
  @override
  GeneratedTextColumn get month => _month ??= _constructMonth();
  GeneratedTextColumn _constructMonth() {
    return GeneratedTextColumn(
      'month',
      $tableName,
      true,
    );
  }

  final VerificationMeta _minTempMeta = const VerificationMeta('minTemp');
  GeneratedIntColumn _minTemp;
  @override
  GeneratedIntColumn get minTemp => _minTemp ??= _constructMinTemp();
  GeneratedIntColumn _constructMinTemp() {
    return GeneratedIntColumn(
      'min_temp',
      $tableName,
      true,
    );
  }

  final VerificationMeta _maxTempMeta = const VerificationMeta('maxTemp');
  GeneratedIntColumn _maxTemp;
  @override
  GeneratedIntColumn get maxTemp => _maxTemp ??= _constructMaxTemp();
  GeneratedIntColumn _constructMaxTemp() {
    return GeneratedIntColumn(
      'max_temp',
      $tableName,
      true,
    );
  }

  final VerificationMeta _avgTempMeta = const VerificationMeta('avgTemp');
  GeneratedIntColumn _avgTemp;
  @override
  GeneratedIntColumn get avgTemp => _avgTemp ??= _constructAvgTemp();
  GeneratedIntColumn _constructAvgTemp() {
    return GeneratedIntColumn(
      'avg_temp',
      $tableName,
      true,
    );
  }

  final VerificationMeta _precipitationMeta =
      const VerificationMeta('precipitation');
  GeneratedIntColumn _precipitation;
  @override
  GeneratedIntColumn get precipitation =>
      _precipitation ??= _constructPrecipitation();
  GeneratedIntColumn _constructPrecipitation() {
    return GeneratedIntColumn(
      'precipitation',
      $tableName,
      true,
    );
  }

  final VerificationMeta _creationDateMeta =
      const VerificationMeta('creationDate');
  GeneratedDateTimeColumn _creationDate;
  @override
  GeneratedDateTimeColumn get creationDate =>
      _creationDate ??= _constructCreationDate();
  GeneratedDateTimeColumn _constructCreationDate() {
    return GeneratedDateTimeColumn(
      'creation_date',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        country,
        month,
        minTemp,
        maxTemp,
        avgTemp,
        precipitation,
        creationDate
      ];
  @override
  $WeathersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'weathers';
  @override
  final String actualTableName = 'weathers';
  @override
  VerificationContext validateIntegrity(Insertable<Weather> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country'], _countryMeta));
    }
    if (data.containsKey('month')) {
      context.handle(
          _monthMeta, month.isAcceptableOrUnknown(data['month'], _monthMeta));
    }
    if (data.containsKey('min_temp')) {
      context.handle(_minTempMeta,
          minTemp.isAcceptableOrUnknown(data['min_temp'], _minTempMeta));
    }
    if (data.containsKey('max_temp')) {
      context.handle(_maxTempMeta,
          maxTemp.isAcceptableOrUnknown(data['max_temp'], _maxTempMeta));
    }
    if (data.containsKey('avg_temp')) {
      context.handle(_avgTempMeta,
          avgTemp.isAcceptableOrUnknown(data['avg_temp'], _avgTempMeta));
    }
    if (data.containsKey('precipitation')) {
      context.handle(
          _precipitationMeta,
          precipitation.isAcceptableOrUnknown(
              data['precipitation'], _precipitationMeta));
    }
    if (data.containsKey('creation_date')) {
      context.handle(
          _creationDateMeta,
          creationDate.isAcceptableOrUnknown(
              data['creation_date'], _creationDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Weather map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Weather.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WeathersTable createAlias(String alias) {
    return $WeathersTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $CountriesTable _countries;
  $CountriesTable get countries => _countries ??= $CountriesTable(this);
  $WeathersTable _weathers;
  $WeathersTable get weathers => _weathers ??= $WeathersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [countries, weathers];
}
