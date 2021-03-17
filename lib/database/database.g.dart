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
  final int januaryMin;
  final int januaryMax;
  final double januaryAvg;
  final int januaryPrec;
  final int februaryMin;
  final int februaryMax;
  final double februaryAvg;
  final int februaryPrec;
  final int marchMin;
  final int marchMax;
  final double marchAvg;
  final int marchPrec;
  final int aprilMin;
  final int aprilMax;
  final double aprilAvg;
  final int aprilPrec;
  final int mayMin;
  final int mayMax;
  final double mayAvg;
  final int mayPrec;
  final int juneMin;
  final int juneMax;
  final double juneAvg;
  final int junePrec;
  final int julyMin;
  final int julyMax;
  final double julyAvg;
  final int julyPrec;
  final int augustMin;
  final int augustMax;
  final double augustAvg;
  final int augustPrec;
  final int septemberMin;
  final int septemberMax;
  final double septemberAvg;
  final int septemberPrec;
  final int octoberMin;
  final int octoberMax;
  final double octoberAvg;
  final int octoberPrec;
  final int novemberMin;
  final int novemberMax;
  final double novemberAvg;
  final int novemberPrec;
  final int decemberMin;
  final int decemberMax;
  final double decemberAvg;
  final int decemberPrec;
  final DateTime creationDate;
  Weather(
      {@required this.id,
      this.country,
      this.januaryMin,
      this.januaryMax,
      this.januaryAvg,
      this.januaryPrec,
      this.februaryMin,
      this.februaryMax,
      this.februaryAvg,
      this.februaryPrec,
      this.marchMin,
      this.marchMax,
      this.marchAvg,
      this.marchPrec,
      this.aprilMin,
      this.aprilMax,
      this.aprilAvg,
      this.aprilPrec,
      this.mayMin,
      this.mayMax,
      this.mayAvg,
      this.mayPrec,
      this.juneMin,
      this.juneMax,
      this.juneAvg,
      this.junePrec,
      this.julyMin,
      this.julyMax,
      this.julyAvg,
      this.julyPrec,
      this.augustMin,
      this.augustMax,
      this.augustAvg,
      this.augustPrec,
      this.septemberMin,
      this.septemberMax,
      this.septemberAvg,
      this.septemberPrec,
      this.octoberMin,
      this.octoberMax,
      this.octoberAvg,
      this.octoberPrec,
      this.novemberMin,
      this.novemberMax,
      this.novemberAvg,
      this.novemberPrec,
      this.decemberMin,
      this.decemberMax,
      this.decemberAvg,
      this.decemberPrec,
      this.creationDate});
  factory Weather.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final doubleType = db.typeSystem.forDartType<double>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Weather(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      country:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}country']),
      januaryMin: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}january_min']),
      januaryMax: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}january_max']),
      januaryAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}january_avg']),
      januaryPrec: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}january_prec']),
      februaryMin: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}february_min']),
      februaryMax: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}february_max']),
      februaryAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}february_avg']),
      februaryPrec: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}february_prec']),
      marchMin:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}march_min']),
      marchMax:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}march_max']),
      marchAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}march_avg']),
      marchPrec:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}march_prec']),
      aprilMin:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}april_min']),
      aprilMax:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}april_max']),
      aprilAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}april_avg']),
      aprilPrec:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}april_prec']),
      mayMin:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}may_min']),
      mayMax:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}may_max']),
      mayAvg:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}may_avg']),
      mayPrec:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}may_prec']),
      juneMin:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}june_min']),
      juneMax:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}june_max']),
      juneAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}june_avg']),
      junePrec:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}june_prec']),
      julyMin:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}july_min']),
      julyMax:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}july_max']),
      julyAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}july_avg']),
      julyPrec:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}july_prec']),
      augustMin:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}august_min']),
      augustMax:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}august_max']),
      augustAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}august_avg']),
      augustPrec: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}august_prec']),
      septemberMin: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}september_min']),
      septemberMax: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}september_max']),
      septemberAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}september_avg']),
      septemberPrec: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}september_prec']),
      octoberMin: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}october_min']),
      octoberMax: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}october_max']),
      octoberAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}october_avg']),
      octoberPrec: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}october_prec']),
      novemberMin: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}november_min']),
      novemberMax: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}november_max']),
      novemberAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}november_avg']),
      novemberPrec: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}november_prec']),
      decemberMin: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}december_min']),
      decemberMax: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}december_max']),
      decemberAvg: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}december_avg']),
      decemberPrec: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}december_prec']),
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
    if (!nullToAbsent || januaryMin != null) {
      map['january_min'] = Variable<int>(januaryMin);
    }
    if (!nullToAbsent || januaryMax != null) {
      map['january_max'] = Variable<int>(januaryMax);
    }
    if (!nullToAbsent || januaryAvg != null) {
      map['january_avg'] = Variable<double>(januaryAvg);
    }
    if (!nullToAbsent || januaryPrec != null) {
      map['january_prec'] = Variable<int>(januaryPrec);
    }
    if (!nullToAbsent || februaryMin != null) {
      map['february_min'] = Variable<int>(februaryMin);
    }
    if (!nullToAbsent || februaryMax != null) {
      map['february_max'] = Variable<int>(februaryMax);
    }
    if (!nullToAbsent || februaryAvg != null) {
      map['february_avg'] = Variable<double>(februaryAvg);
    }
    if (!nullToAbsent || februaryPrec != null) {
      map['february_prec'] = Variable<int>(februaryPrec);
    }
    if (!nullToAbsent || marchMin != null) {
      map['march_min'] = Variable<int>(marchMin);
    }
    if (!nullToAbsent || marchMax != null) {
      map['march_max'] = Variable<int>(marchMax);
    }
    if (!nullToAbsent || marchAvg != null) {
      map['march_avg'] = Variable<double>(marchAvg);
    }
    if (!nullToAbsent || marchPrec != null) {
      map['march_prec'] = Variable<int>(marchPrec);
    }
    if (!nullToAbsent || aprilMin != null) {
      map['april_min'] = Variable<int>(aprilMin);
    }
    if (!nullToAbsent || aprilMax != null) {
      map['april_max'] = Variable<int>(aprilMax);
    }
    if (!nullToAbsent || aprilAvg != null) {
      map['april_avg'] = Variable<double>(aprilAvg);
    }
    if (!nullToAbsent || aprilPrec != null) {
      map['april_prec'] = Variable<int>(aprilPrec);
    }
    if (!nullToAbsent || mayMin != null) {
      map['may_min'] = Variable<int>(mayMin);
    }
    if (!nullToAbsent || mayMax != null) {
      map['may_max'] = Variable<int>(mayMax);
    }
    if (!nullToAbsent || mayAvg != null) {
      map['may_avg'] = Variable<double>(mayAvg);
    }
    if (!nullToAbsent || mayPrec != null) {
      map['may_prec'] = Variable<int>(mayPrec);
    }
    if (!nullToAbsent || juneMin != null) {
      map['june_min'] = Variable<int>(juneMin);
    }
    if (!nullToAbsent || juneMax != null) {
      map['june_max'] = Variable<int>(juneMax);
    }
    if (!nullToAbsent || juneAvg != null) {
      map['june_avg'] = Variable<double>(juneAvg);
    }
    if (!nullToAbsent || junePrec != null) {
      map['june_prec'] = Variable<int>(junePrec);
    }
    if (!nullToAbsent || julyMin != null) {
      map['july_min'] = Variable<int>(julyMin);
    }
    if (!nullToAbsent || julyMax != null) {
      map['july_max'] = Variable<int>(julyMax);
    }
    if (!nullToAbsent || julyAvg != null) {
      map['july_avg'] = Variable<double>(julyAvg);
    }
    if (!nullToAbsent || julyPrec != null) {
      map['july_prec'] = Variable<int>(julyPrec);
    }
    if (!nullToAbsent || augustMin != null) {
      map['august_min'] = Variable<int>(augustMin);
    }
    if (!nullToAbsent || augustMax != null) {
      map['august_max'] = Variable<int>(augustMax);
    }
    if (!nullToAbsent || augustAvg != null) {
      map['august_avg'] = Variable<double>(augustAvg);
    }
    if (!nullToAbsent || augustPrec != null) {
      map['august_prec'] = Variable<int>(augustPrec);
    }
    if (!nullToAbsent || septemberMin != null) {
      map['september_min'] = Variable<int>(septemberMin);
    }
    if (!nullToAbsent || septemberMax != null) {
      map['september_max'] = Variable<int>(septemberMax);
    }
    if (!nullToAbsent || septemberAvg != null) {
      map['september_avg'] = Variable<double>(septemberAvg);
    }
    if (!nullToAbsent || septemberPrec != null) {
      map['september_prec'] = Variable<int>(septemberPrec);
    }
    if (!nullToAbsent || octoberMin != null) {
      map['october_min'] = Variable<int>(octoberMin);
    }
    if (!nullToAbsent || octoberMax != null) {
      map['october_max'] = Variable<int>(octoberMax);
    }
    if (!nullToAbsent || octoberAvg != null) {
      map['october_avg'] = Variable<double>(octoberAvg);
    }
    if (!nullToAbsent || octoberPrec != null) {
      map['october_prec'] = Variable<int>(octoberPrec);
    }
    if (!nullToAbsent || novemberMin != null) {
      map['november_min'] = Variable<int>(novemberMin);
    }
    if (!nullToAbsent || novemberMax != null) {
      map['november_max'] = Variable<int>(novemberMax);
    }
    if (!nullToAbsent || novemberAvg != null) {
      map['november_avg'] = Variable<double>(novemberAvg);
    }
    if (!nullToAbsent || novemberPrec != null) {
      map['november_prec'] = Variable<int>(novemberPrec);
    }
    if (!nullToAbsent || decemberMin != null) {
      map['december_min'] = Variable<int>(decemberMin);
    }
    if (!nullToAbsent || decemberMax != null) {
      map['december_max'] = Variable<int>(decemberMax);
    }
    if (!nullToAbsent || decemberAvg != null) {
      map['december_avg'] = Variable<double>(decemberAvg);
    }
    if (!nullToAbsent || decemberPrec != null) {
      map['december_prec'] = Variable<int>(decemberPrec);
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
      januaryMin: januaryMin == null && nullToAbsent
          ? const Value.absent()
          : Value(januaryMin),
      januaryMax: januaryMax == null && nullToAbsent
          ? const Value.absent()
          : Value(januaryMax),
      januaryAvg: januaryAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(januaryAvg),
      januaryPrec: januaryPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(januaryPrec),
      februaryMin: februaryMin == null && nullToAbsent
          ? const Value.absent()
          : Value(februaryMin),
      februaryMax: februaryMax == null && nullToAbsent
          ? const Value.absent()
          : Value(februaryMax),
      februaryAvg: februaryAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(februaryAvg),
      februaryPrec: februaryPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(februaryPrec),
      marchMin: marchMin == null && nullToAbsent
          ? const Value.absent()
          : Value(marchMin),
      marchMax: marchMax == null && nullToAbsent
          ? const Value.absent()
          : Value(marchMax),
      marchAvg: marchAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(marchAvg),
      marchPrec: marchPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(marchPrec),
      aprilMin: aprilMin == null && nullToAbsent
          ? const Value.absent()
          : Value(aprilMin),
      aprilMax: aprilMax == null && nullToAbsent
          ? const Value.absent()
          : Value(aprilMax),
      aprilAvg: aprilAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(aprilAvg),
      aprilPrec: aprilPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(aprilPrec),
      mayMin:
          mayMin == null && nullToAbsent ? const Value.absent() : Value(mayMin),
      mayMax:
          mayMax == null && nullToAbsent ? const Value.absent() : Value(mayMax),
      mayAvg:
          mayAvg == null && nullToAbsent ? const Value.absent() : Value(mayAvg),
      mayPrec: mayPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(mayPrec),
      juneMin: juneMin == null && nullToAbsent
          ? const Value.absent()
          : Value(juneMin),
      juneMax: juneMax == null && nullToAbsent
          ? const Value.absent()
          : Value(juneMax),
      juneAvg: juneAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(juneAvg),
      junePrec: junePrec == null && nullToAbsent
          ? const Value.absent()
          : Value(junePrec),
      julyMin: julyMin == null && nullToAbsent
          ? const Value.absent()
          : Value(julyMin),
      julyMax: julyMax == null && nullToAbsent
          ? const Value.absent()
          : Value(julyMax),
      julyAvg: julyAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(julyAvg),
      julyPrec: julyPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(julyPrec),
      augustMin: augustMin == null && nullToAbsent
          ? const Value.absent()
          : Value(augustMin),
      augustMax: augustMax == null && nullToAbsent
          ? const Value.absent()
          : Value(augustMax),
      augustAvg: augustAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(augustAvg),
      augustPrec: augustPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(augustPrec),
      septemberMin: septemberMin == null && nullToAbsent
          ? const Value.absent()
          : Value(septemberMin),
      septemberMax: septemberMax == null && nullToAbsent
          ? const Value.absent()
          : Value(septemberMax),
      septemberAvg: septemberAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(septemberAvg),
      septemberPrec: septemberPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(septemberPrec),
      octoberMin: octoberMin == null && nullToAbsent
          ? const Value.absent()
          : Value(octoberMin),
      octoberMax: octoberMax == null && nullToAbsent
          ? const Value.absent()
          : Value(octoberMax),
      octoberAvg: octoberAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(octoberAvg),
      octoberPrec: octoberPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(octoberPrec),
      novemberMin: novemberMin == null && nullToAbsent
          ? const Value.absent()
          : Value(novemberMin),
      novemberMax: novemberMax == null && nullToAbsent
          ? const Value.absent()
          : Value(novemberMax),
      novemberAvg: novemberAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(novemberAvg),
      novemberPrec: novemberPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(novemberPrec),
      decemberMin: decemberMin == null && nullToAbsent
          ? const Value.absent()
          : Value(decemberMin),
      decemberMax: decemberMax == null && nullToAbsent
          ? const Value.absent()
          : Value(decemberMax),
      decemberAvg: decemberAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(decemberAvg),
      decemberPrec: decemberPrec == null && nullToAbsent
          ? const Value.absent()
          : Value(decemberPrec),
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
      januaryMin: serializer.fromJson<int>(json['januaryMin']),
      januaryMax: serializer.fromJson<int>(json['januaryMax']),
      januaryAvg: serializer.fromJson<double>(json['januaryAvg']),
      januaryPrec: serializer.fromJson<int>(json['januaryPrec']),
      februaryMin: serializer.fromJson<int>(json['februaryMin']),
      februaryMax: serializer.fromJson<int>(json['februaryMax']),
      februaryAvg: serializer.fromJson<double>(json['februaryAvg']),
      februaryPrec: serializer.fromJson<int>(json['februaryPrec']),
      marchMin: serializer.fromJson<int>(json['marchMin']),
      marchMax: serializer.fromJson<int>(json['marchMax']),
      marchAvg: serializer.fromJson<double>(json['marchAvg']),
      marchPrec: serializer.fromJson<int>(json['marchPrec']),
      aprilMin: serializer.fromJson<int>(json['aprilMin']),
      aprilMax: serializer.fromJson<int>(json['aprilMax']),
      aprilAvg: serializer.fromJson<double>(json['aprilAvg']),
      aprilPrec: serializer.fromJson<int>(json['aprilPrec']),
      mayMin: serializer.fromJson<int>(json['mayMin']),
      mayMax: serializer.fromJson<int>(json['mayMax']),
      mayAvg: serializer.fromJson<double>(json['mayAvg']),
      mayPrec: serializer.fromJson<int>(json['mayPrec']),
      juneMin: serializer.fromJson<int>(json['juneMin']),
      juneMax: serializer.fromJson<int>(json['juneMax']),
      juneAvg: serializer.fromJson<double>(json['juneAvg']),
      junePrec: serializer.fromJson<int>(json['junePrec']),
      julyMin: serializer.fromJson<int>(json['julyMin']),
      julyMax: serializer.fromJson<int>(json['julyMax']),
      julyAvg: serializer.fromJson<double>(json['julyAvg']),
      julyPrec: serializer.fromJson<int>(json['julyPrec']),
      augustMin: serializer.fromJson<int>(json['augustMin']),
      augustMax: serializer.fromJson<int>(json['augustMax']),
      augustAvg: serializer.fromJson<double>(json['augustAvg']),
      augustPrec: serializer.fromJson<int>(json['augustPrec']),
      septemberMin: serializer.fromJson<int>(json['septemberMin']),
      septemberMax: serializer.fromJson<int>(json['septemberMax']),
      septemberAvg: serializer.fromJson<double>(json['septemberAvg']),
      septemberPrec: serializer.fromJson<int>(json['septemberPrec']),
      octoberMin: serializer.fromJson<int>(json['octoberMin']),
      octoberMax: serializer.fromJson<int>(json['octoberMax']),
      octoberAvg: serializer.fromJson<double>(json['octoberAvg']),
      octoberPrec: serializer.fromJson<int>(json['octoberPrec']),
      novemberMin: serializer.fromJson<int>(json['novemberMin']),
      novemberMax: serializer.fromJson<int>(json['novemberMax']),
      novemberAvg: serializer.fromJson<double>(json['novemberAvg']),
      novemberPrec: serializer.fromJson<int>(json['novemberPrec']),
      decemberMin: serializer.fromJson<int>(json['decemberMin']),
      decemberMax: serializer.fromJson<int>(json['decemberMax']),
      decemberAvg: serializer.fromJson<double>(json['decemberAvg']),
      decemberPrec: serializer.fromJson<int>(json['decemberPrec']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'country': serializer.toJson<int>(country),
      'januaryMin': serializer.toJson<int>(januaryMin),
      'januaryMax': serializer.toJson<int>(januaryMax),
      'januaryAvg': serializer.toJson<double>(januaryAvg),
      'januaryPrec': serializer.toJson<int>(januaryPrec),
      'februaryMin': serializer.toJson<int>(februaryMin),
      'februaryMax': serializer.toJson<int>(februaryMax),
      'februaryAvg': serializer.toJson<double>(februaryAvg),
      'februaryPrec': serializer.toJson<int>(februaryPrec),
      'marchMin': serializer.toJson<int>(marchMin),
      'marchMax': serializer.toJson<int>(marchMax),
      'marchAvg': serializer.toJson<double>(marchAvg),
      'marchPrec': serializer.toJson<int>(marchPrec),
      'aprilMin': serializer.toJson<int>(aprilMin),
      'aprilMax': serializer.toJson<int>(aprilMax),
      'aprilAvg': serializer.toJson<double>(aprilAvg),
      'aprilPrec': serializer.toJson<int>(aprilPrec),
      'mayMin': serializer.toJson<int>(mayMin),
      'mayMax': serializer.toJson<int>(mayMax),
      'mayAvg': serializer.toJson<double>(mayAvg),
      'mayPrec': serializer.toJson<int>(mayPrec),
      'juneMin': serializer.toJson<int>(juneMin),
      'juneMax': serializer.toJson<int>(juneMax),
      'juneAvg': serializer.toJson<double>(juneAvg),
      'junePrec': serializer.toJson<int>(junePrec),
      'julyMin': serializer.toJson<int>(julyMin),
      'julyMax': serializer.toJson<int>(julyMax),
      'julyAvg': serializer.toJson<double>(julyAvg),
      'julyPrec': serializer.toJson<int>(julyPrec),
      'augustMin': serializer.toJson<int>(augustMin),
      'augustMax': serializer.toJson<int>(augustMax),
      'augustAvg': serializer.toJson<double>(augustAvg),
      'augustPrec': serializer.toJson<int>(augustPrec),
      'septemberMin': serializer.toJson<int>(septemberMin),
      'septemberMax': serializer.toJson<int>(septemberMax),
      'septemberAvg': serializer.toJson<double>(septemberAvg),
      'septemberPrec': serializer.toJson<int>(septemberPrec),
      'octoberMin': serializer.toJson<int>(octoberMin),
      'octoberMax': serializer.toJson<int>(octoberMax),
      'octoberAvg': serializer.toJson<double>(octoberAvg),
      'octoberPrec': serializer.toJson<int>(octoberPrec),
      'novemberMin': serializer.toJson<int>(novemberMin),
      'novemberMax': serializer.toJson<int>(novemberMax),
      'novemberAvg': serializer.toJson<double>(novemberAvg),
      'novemberPrec': serializer.toJson<int>(novemberPrec),
      'decemberMin': serializer.toJson<int>(decemberMin),
      'decemberMax': serializer.toJson<int>(decemberMax),
      'decemberAvg': serializer.toJson<double>(decemberAvg),
      'decemberPrec': serializer.toJson<int>(decemberPrec),
      'creationDate': serializer.toJson<DateTime>(creationDate),
    };
  }

  Weather copyWith(
          {int id,
          int country,
          int januaryMin,
          int januaryMax,
          double januaryAvg,
          int januaryPrec,
          int februaryMin,
          int februaryMax,
          double februaryAvg,
          int februaryPrec,
          int marchMin,
          int marchMax,
          double marchAvg,
          int marchPrec,
          int aprilMin,
          int aprilMax,
          double aprilAvg,
          int aprilPrec,
          int mayMin,
          int mayMax,
          double mayAvg,
          int mayPrec,
          int juneMin,
          int juneMax,
          double juneAvg,
          int junePrec,
          int julyMin,
          int julyMax,
          double julyAvg,
          int julyPrec,
          int augustMin,
          int augustMax,
          double augustAvg,
          int augustPrec,
          int septemberMin,
          int septemberMax,
          double septemberAvg,
          int septemberPrec,
          int octoberMin,
          int octoberMax,
          double octoberAvg,
          int octoberPrec,
          int novemberMin,
          int novemberMax,
          double novemberAvg,
          int novemberPrec,
          int decemberMin,
          int decemberMax,
          double decemberAvg,
          int decemberPrec,
          DateTime creationDate}) =>
      Weather(
        id: id ?? this.id,
        country: country ?? this.country,
        januaryMin: januaryMin ?? this.januaryMin,
        januaryMax: januaryMax ?? this.januaryMax,
        januaryAvg: januaryAvg ?? this.januaryAvg,
        januaryPrec: januaryPrec ?? this.januaryPrec,
        februaryMin: februaryMin ?? this.februaryMin,
        februaryMax: februaryMax ?? this.februaryMax,
        februaryAvg: februaryAvg ?? this.februaryAvg,
        februaryPrec: februaryPrec ?? this.februaryPrec,
        marchMin: marchMin ?? this.marchMin,
        marchMax: marchMax ?? this.marchMax,
        marchAvg: marchAvg ?? this.marchAvg,
        marchPrec: marchPrec ?? this.marchPrec,
        aprilMin: aprilMin ?? this.aprilMin,
        aprilMax: aprilMax ?? this.aprilMax,
        aprilAvg: aprilAvg ?? this.aprilAvg,
        aprilPrec: aprilPrec ?? this.aprilPrec,
        mayMin: mayMin ?? this.mayMin,
        mayMax: mayMax ?? this.mayMax,
        mayAvg: mayAvg ?? this.mayAvg,
        mayPrec: mayPrec ?? this.mayPrec,
        juneMin: juneMin ?? this.juneMin,
        juneMax: juneMax ?? this.juneMax,
        juneAvg: juneAvg ?? this.juneAvg,
        junePrec: junePrec ?? this.junePrec,
        julyMin: julyMin ?? this.julyMin,
        julyMax: julyMax ?? this.julyMax,
        julyAvg: julyAvg ?? this.julyAvg,
        julyPrec: julyPrec ?? this.julyPrec,
        augustMin: augustMin ?? this.augustMin,
        augustMax: augustMax ?? this.augustMax,
        augustAvg: augustAvg ?? this.augustAvg,
        augustPrec: augustPrec ?? this.augustPrec,
        septemberMin: septemberMin ?? this.septemberMin,
        septemberMax: septemberMax ?? this.septemberMax,
        septemberAvg: septemberAvg ?? this.septemberAvg,
        septemberPrec: septemberPrec ?? this.septemberPrec,
        octoberMin: octoberMin ?? this.octoberMin,
        octoberMax: octoberMax ?? this.octoberMax,
        octoberAvg: octoberAvg ?? this.octoberAvg,
        octoberPrec: octoberPrec ?? this.octoberPrec,
        novemberMin: novemberMin ?? this.novemberMin,
        novemberMax: novemberMax ?? this.novemberMax,
        novemberAvg: novemberAvg ?? this.novemberAvg,
        novemberPrec: novemberPrec ?? this.novemberPrec,
        decemberMin: decemberMin ?? this.decemberMin,
        decemberMax: decemberMax ?? this.decemberMax,
        decemberAvg: decemberAvg ?? this.decemberAvg,
        decemberPrec: decemberPrec ?? this.decemberPrec,
        creationDate: creationDate ?? this.creationDate,
      );
  @override
  String toString() {
    return (StringBuffer('Weather(')
          ..write('id: $id, ')
          ..write('country: $country, ')
          ..write('januaryMin: $januaryMin, ')
          ..write('januaryMax: $januaryMax, ')
          ..write('januaryAvg: $januaryAvg, ')
          ..write('januaryPrec: $januaryPrec, ')
          ..write('februaryMin: $februaryMin, ')
          ..write('februaryMax: $februaryMax, ')
          ..write('februaryAvg: $februaryAvg, ')
          ..write('februaryPrec: $februaryPrec, ')
          ..write('marchMin: $marchMin, ')
          ..write('marchMax: $marchMax, ')
          ..write('marchAvg: $marchAvg, ')
          ..write('marchPrec: $marchPrec, ')
          ..write('aprilMin: $aprilMin, ')
          ..write('aprilMax: $aprilMax, ')
          ..write('aprilAvg: $aprilAvg, ')
          ..write('aprilPrec: $aprilPrec, ')
          ..write('mayMin: $mayMin, ')
          ..write('mayMax: $mayMax, ')
          ..write('mayAvg: $mayAvg, ')
          ..write('mayPrec: $mayPrec, ')
          ..write('juneMin: $juneMin, ')
          ..write('juneMax: $juneMax, ')
          ..write('juneAvg: $juneAvg, ')
          ..write('junePrec: $junePrec, ')
          ..write('julyMin: $julyMin, ')
          ..write('julyMax: $julyMax, ')
          ..write('julyAvg: $julyAvg, ')
          ..write('julyPrec: $julyPrec, ')
          ..write('augustMin: $augustMin, ')
          ..write('augustMax: $augustMax, ')
          ..write('augustAvg: $augustAvg, ')
          ..write('augustPrec: $augustPrec, ')
          ..write('septemberMin: $septemberMin, ')
          ..write('septemberMax: $septemberMax, ')
          ..write('septemberAvg: $septemberAvg, ')
          ..write('septemberPrec: $septemberPrec, ')
          ..write('octoberMin: $octoberMin, ')
          ..write('octoberMax: $octoberMax, ')
          ..write('octoberAvg: $octoberAvg, ')
          ..write('octoberPrec: $octoberPrec, ')
          ..write('novemberMin: $novemberMin, ')
          ..write('novemberMax: $novemberMax, ')
          ..write('novemberAvg: $novemberAvg, ')
          ..write('novemberPrec: $novemberPrec, ')
          ..write('decemberMin: $decemberMin, ')
          ..write('decemberMax: $decemberMax, ')
          ..write('decemberAvg: $decemberAvg, ')
          ..write('decemberPrec: $decemberPrec, ')
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
              januaryMin.hashCode,
              $mrjc(
                  januaryMax.hashCode,
                  $mrjc(
                      januaryAvg.hashCode,
                      $mrjc(
                          januaryPrec.hashCode,
                          $mrjc(
                              februaryMin.hashCode,
                              $mrjc(
                                  februaryMax.hashCode,
                                  $mrjc(
                                      februaryAvg.hashCode,
                                      $mrjc(
                                          februaryPrec.hashCode,
                                          $mrjc(
                                              marchMin.hashCode,
                                              $mrjc(
                                                  marchMax.hashCode,
                                                  $mrjc(
                                                      marchAvg.hashCode,
                                                      $mrjc(
                                                          marchPrec.hashCode,
                                                          $mrjc(
                                                              aprilMin.hashCode,
                                                              $mrjc(
                                                                  aprilMax
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      aprilAvg
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          aprilPrec
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              mayMin.hashCode,
                                                                              $mrjc(mayMax.hashCode, $mrjc(mayAvg.hashCode, $mrjc(mayPrec.hashCode, $mrjc(juneMin.hashCode, $mrjc(juneMax.hashCode, $mrjc(juneAvg.hashCode, $mrjc(junePrec.hashCode, $mrjc(julyMin.hashCode, $mrjc(julyMax.hashCode, $mrjc(julyAvg.hashCode, $mrjc(julyPrec.hashCode, $mrjc(augustMin.hashCode, $mrjc(augustMax.hashCode, $mrjc(augustAvg.hashCode, $mrjc(augustPrec.hashCode, $mrjc(septemberMin.hashCode, $mrjc(septemberMax.hashCode, $mrjc(septemberAvg.hashCode, $mrjc(septemberPrec.hashCode, $mrjc(octoberMin.hashCode, $mrjc(octoberMax.hashCode, $mrjc(octoberAvg.hashCode, $mrjc(octoberPrec.hashCode, $mrjc(novemberMin.hashCode, $mrjc(novemberMax.hashCode, $mrjc(novemberAvg.hashCode, $mrjc(novemberPrec.hashCode, $mrjc(decemberMin.hashCode, $mrjc(decemberMax.hashCode, $mrjc(decemberAvg.hashCode, $mrjc(decemberPrec.hashCode, creationDate.hashCode)))))))))))))))))))))))))))))))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Weather &&
          other.id == this.id &&
          other.country == this.country &&
          other.januaryMin == this.januaryMin &&
          other.januaryMax == this.januaryMax &&
          other.januaryAvg == this.januaryAvg &&
          other.januaryPrec == this.januaryPrec &&
          other.februaryMin == this.februaryMin &&
          other.februaryMax == this.februaryMax &&
          other.februaryAvg == this.februaryAvg &&
          other.februaryPrec == this.februaryPrec &&
          other.marchMin == this.marchMin &&
          other.marchMax == this.marchMax &&
          other.marchAvg == this.marchAvg &&
          other.marchPrec == this.marchPrec &&
          other.aprilMin == this.aprilMin &&
          other.aprilMax == this.aprilMax &&
          other.aprilAvg == this.aprilAvg &&
          other.aprilPrec == this.aprilPrec &&
          other.mayMin == this.mayMin &&
          other.mayMax == this.mayMax &&
          other.mayAvg == this.mayAvg &&
          other.mayPrec == this.mayPrec &&
          other.juneMin == this.juneMin &&
          other.juneMax == this.juneMax &&
          other.juneAvg == this.juneAvg &&
          other.junePrec == this.junePrec &&
          other.julyMin == this.julyMin &&
          other.julyMax == this.julyMax &&
          other.julyAvg == this.julyAvg &&
          other.julyPrec == this.julyPrec &&
          other.augustMin == this.augustMin &&
          other.augustMax == this.augustMax &&
          other.augustAvg == this.augustAvg &&
          other.augustPrec == this.augustPrec &&
          other.septemberMin == this.septemberMin &&
          other.septemberMax == this.septemberMax &&
          other.septemberAvg == this.septemberAvg &&
          other.septemberPrec == this.septemberPrec &&
          other.octoberMin == this.octoberMin &&
          other.octoberMax == this.octoberMax &&
          other.octoberAvg == this.octoberAvg &&
          other.octoberPrec == this.octoberPrec &&
          other.novemberMin == this.novemberMin &&
          other.novemberMax == this.novemberMax &&
          other.novemberAvg == this.novemberAvg &&
          other.novemberPrec == this.novemberPrec &&
          other.decemberMin == this.decemberMin &&
          other.decemberMax == this.decemberMax &&
          other.decemberAvg == this.decemberAvg &&
          other.decemberPrec == this.decemberPrec &&
          other.creationDate == this.creationDate);
}

class WeathersCompanion extends UpdateCompanion<Weather> {
  final Value<int> id;
  final Value<int> country;
  final Value<int> januaryMin;
  final Value<int> januaryMax;
  final Value<double> januaryAvg;
  final Value<int> januaryPrec;
  final Value<int> februaryMin;
  final Value<int> februaryMax;
  final Value<double> februaryAvg;
  final Value<int> februaryPrec;
  final Value<int> marchMin;
  final Value<int> marchMax;
  final Value<double> marchAvg;
  final Value<int> marchPrec;
  final Value<int> aprilMin;
  final Value<int> aprilMax;
  final Value<double> aprilAvg;
  final Value<int> aprilPrec;
  final Value<int> mayMin;
  final Value<int> mayMax;
  final Value<double> mayAvg;
  final Value<int> mayPrec;
  final Value<int> juneMin;
  final Value<int> juneMax;
  final Value<double> juneAvg;
  final Value<int> junePrec;
  final Value<int> julyMin;
  final Value<int> julyMax;
  final Value<double> julyAvg;
  final Value<int> julyPrec;
  final Value<int> augustMin;
  final Value<int> augustMax;
  final Value<double> augustAvg;
  final Value<int> augustPrec;
  final Value<int> septemberMin;
  final Value<int> septemberMax;
  final Value<double> septemberAvg;
  final Value<int> septemberPrec;
  final Value<int> octoberMin;
  final Value<int> octoberMax;
  final Value<double> octoberAvg;
  final Value<int> octoberPrec;
  final Value<int> novemberMin;
  final Value<int> novemberMax;
  final Value<double> novemberAvg;
  final Value<int> novemberPrec;
  final Value<int> decemberMin;
  final Value<int> decemberMax;
  final Value<double> decemberAvg;
  final Value<int> decemberPrec;
  final Value<DateTime> creationDate;
  const WeathersCompanion({
    this.id = const Value.absent(),
    this.country = const Value.absent(),
    this.januaryMin = const Value.absent(),
    this.januaryMax = const Value.absent(),
    this.januaryAvg = const Value.absent(),
    this.januaryPrec = const Value.absent(),
    this.februaryMin = const Value.absent(),
    this.februaryMax = const Value.absent(),
    this.februaryAvg = const Value.absent(),
    this.februaryPrec = const Value.absent(),
    this.marchMin = const Value.absent(),
    this.marchMax = const Value.absent(),
    this.marchAvg = const Value.absent(),
    this.marchPrec = const Value.absent(),
    this.aprilMin = const Value.absent(),
    this.aprilMax = const Value.absent(),
    this.aprilAvg = const Value.absent(),
    this.aprilPrec = const Value.absent(),
    this.mayMin = const Value.absent(),
    this.mayMax = const Value.absent(),
    this.mayAvg = const Value.absent(),
    this.mayPrec = const Value.absent(),
    this.juneMin = const Value.absent(),
    this.juneMax = const Value.absent(),
    this.juneAvg = const Value.absent(),
    this.junePrec = const Value.absent(),
    this.julyMin = const Value.absent(),
    this.julyMax = const Value.absent(),
    this.julyAvg = const Value.absent(),
    this.julyPrec = const Value.absent(),
    this.augustMin = const Value.absent(),
    this.augustMax = const Value.absent(),
    this.augustAvg = const Value.absent(),
    this.augustPrec = const Value.absent(),
    this.septemberMin = const Value.absent(),
    this.septemberMax = const Value.absent(),
    this.septemberAvg = const Value.absent(),
    this.septemberPrec = const Value.absent(),
    this.octoberMin = const Value.absent(),
    this.octoberMax = const Value.absent(),
    this.octoberAvg = const Value.absent(),
    this.octoberPrec = const Value.absent(),
    this.novemberMin = const Value.absent(),
    this.novemberMax = const Value.absent(),
    this.novemberAvg = const Value.absent(),
    this.novemberPrec = const Value.absent(),
    this.decemberMin = const Value.absent(),
    this.decemberMax = const Value.absent(),
    this.decemberAvg = const Value.absent(),
    this.decemberPrec = const Value.absent(),
    this.creationDate = const Value.absent(),
  });
  WeathersCompanion.insert({
    this.id = const Value.absent(),
    this.country = const Value.absent(),
    this.januaryMin = const Value.absent(),
    this.januaryMax = const Value.absent(),
    this.januaryAvg = const Value.absent(),
    this.januaryPrec = const Value.absent(),
    this.februaryMin = const Value.absent(),
    this.februaryMax = const Value.absent(),
    this.februaryAvg = const Value.absent(),
    this.februaryPrec = const Value.absent(),
    this.marchMin = const Value.absent(),
    this.marchMax = const Value.absent(),
    this.marchAvg = const Value.absent(),
    this.marchPrec = const Value.absent(),
    this.aprilMin = const Value.absent(),
    this.aprilMax = const Value.absent(),
    this.aprilAvg = const Value.absent(),
    this.aprilPrec = const Value.absent(),
    this.mayMin = const Value.absent(),
    this.mayMax = const Value.absent(),
    this.mayAvg = const Value.absent(),
    this.mayPrec = const Value.absent(),
    this.juneMin = const Value.absent(),
    this.juneMax = const Value.absent(),
    this.juneAvg = const Value.absent(),
    this.junePrec = const Value.absent(),
    this.julyMin = const Value.absent(),
    this.julyMax = const Value.absent(),
    this.julyAvg = const Value.absent(),
    this.julyPrec = const Value.absent(),
    this.augustMin = const Value.absent(),
    this.augustMax = const Value.absent(),
    this.augustAvg = const Value.absent(),
    this.augustPrec = const Value.absent(),
    this.septemberMin = const Value.absent(),
    this.septemberMax = const Value.absent(),
    this.septemberAvg = const Value.absent(),
    this.septemberPrec = const Value.absent(),
    this.octoberMin = const Value.absent(),
    this.octoberMax = const Value.absent(),
    this.octoberAvg = const Value.absent(),
    this.octoberPrec = const Value.absent(),
    this.novemberMin = const Value.absent(),
    this.novemberMax = const Value.absent(),
    this.novemberAvg = const Value.absent(),
    this.novemberPrec = const Value.absent(),
    this.decemberMin = const Value.absent(),
    this.decemberMax = const Value.absent(),
    this.decemberAvg = const Value.absent(),
    this.decemberPrec = const Value.absent(),
    this.creationDate = const Value.absent(),
  });
  static Insertable<Weather> custom({
    Expression<int> id,
    Expression<int> country,
    Expression<int> januaryMin,
    Expression<int> januaryMax,
    Expression<double> januaryAvg,
    Expression<int> januaryPrec,
    Expression<int> februaryMin,
    Expression<int> februaryMax,
    Expression<double> februaryAvg,
    Expression<int> februaryPrec,
    Expression<int> marchMin,
    Expression<int> marchMax,
    Expression<double> marchAvg,
    Expression<int> marchPrec,
    Expression<int> aprilMin,
    Expression<int> aprilMax,
    Expression<double> aprilAvg,
    Expression<int> aprilPrec,
    Expression<int> mayMin,
    Expression<int> mayMax,
    Expression<double> mayAvg,
    Expression<int> mayPrec,
    Expression<int> juneMin,
    Expression<int> juneMax,
    Expression<double> juneAvg,
    Expression<int> junePrec,
    Expression<int> julyMin,
    Expression<int> julyMax,
    Expression<double> julyAvg,
    Expression<int> julyPrec,
    Expression<int> augustMin,
    Expression<int> augustMax,
    Expression<double> augustAvg,
    Expression<int> augustPrec,
    Expression<int> septemberMin,
    Expression<int> septemberMax,
    Expression<double> septemberAvg,
    Expression<int> septemberPrec,
    Expression<int> octoberMin,
    Expression<int> octoberMax,
    Expression<double> octoberAvg,
    Expression<int> octoberPrec,
    Expression<int> novemberMin,
    Expression<int> novemberMax,
    Expression<double> novemberAvg,
    Expression<int> novemberPrec,
    Expression<int> decemberMin,
    Expression<int> decemberMax,
    Expression<double> decemberAvg,
    Expression<int> decemberPrec,
    Expression<DateTime> creationDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (country != null) 'country': country,
      if (januaryMin != null) 'january_min': januaryMin,
      if (januaryMax != null) 'january_max': januaryMax,
      if (januaryAvg != null) 'january_avg': januaryAvg,
      if (januaryPrec != null) 'january_prec': januaryPrec,
      if (februaryMin != null) 'february_min': februaryMin,
      if (februaryMax != null) 'february_max': februaryMax,
      if (februaryAvg != null) 'february_avg': februaryAvg,
      if (februaryPrec != null) 'february_prec': februaryPrec,
      if (marchMin != null) 'march_min': marchMin,
      if (marchMax != null) 'march_max': marchMax,
      if (marchAvg != null) 'march_avg': marchAvg,
      if (marchPrec != null) 'march_prec': marchPrec,
      if (aprilMin != null) 'april_min': aprilMin,
      if (aprilMax != null) 'april_max': aprilMax,
      if (aprilAvg != null) 'april_avg': aprilAvg,
      if (aprilPrec != null) 'april_prec': aprilPrec,
      if (mayMin != null) 'may_min': mayMin,
      if (mayMax != null) 'may_max': mayMax,
      if (mayAvg != null) 'may_avg': mayAvg,
      if (mayPrec != null) 'may_prec': mayPrec,
      if (juneMin != null) 'june_min': juneMin,
      if (juneMax != null) 'june_max': juneMax,
      if (juneAvg != null) 'june_avg': juneAvg,
      if (junePrec != null) 'june_prec': junePrec,
      if (julyMin != null) 'july_min': julyMin,
      if (julyMax != null) 'july_max': julyMax,
      if (julyAvg != null) 'july_avg': julyAvg,
      if (julyPrec != null) 'july_prec': julyPrec,
      if (augustMin != null) 'august_min': augustMin,
      if (augustMax != null) 'august_max': augustMax,
      if (augustAvg != null) 'august_avg': augustAvg,
      if (augustPrec != null) 'august_prec': augustPrec,
      if (septemberMin != null) 'september_min': septemberMin,
      if (septemberMax != null) 'september_max': septemberMax,
      if (septemberAvg != null) 'september_avg': septemberAvg,
      if (septemberPrec != null) 'september_prec': septemberPrec,
      if (octoberMin != null) 'october_min': octoberMin,
      if (octoberMax != null) 'october_max': octoberMax,
      if (octoberAvg != null) 'october_avg': octoberAvg,
      if (octoberPrec != null) 'october_prec': octoberPrec,
      if (novemberMin != null) 'november_min': novemberMin,
      if (novemberMax != null) 'november_max': novemberMax,
      if (novemberAvg != null) 'november_avg': novemberAvg,
      if (novemberPrec != null) 'november_prec': novemberPrec,
      if (decemberMin != null) 'december_min': decemberMin,
      if (decemberMax != null) 'december_max': decemberMax,
      if (decemberAvg != null) 'december_avg': decemberAvg,
      if (decemberPrec != null) 'december_prec': decemberPrec,
      if (creationDate != null) 'creation_date': creationDate,
    });
  }

  WeathersCompanion copyWith(
      {Value<int> id,
      Value<int> country,
      Value<int> januaryMin,
      Value<int> januaryMax,
      Value<double> januaryAvg,
      Value<int> januaryPrec,
      Value<int> februaryMin,
      Value<int> februaryMax,
      Value<double> februaryAvg,
      Value<int> februaryPrec,
      Value<int> marchMin,
      Value<int> marchMax,
      Value<double> marchAvg,
      Value<int> marchPrec,
      Value<int> aprilMin,
      Value<int> aprilMax,
      Value<double> aprilAvg,
      Value<int> aprilPrec,
      Value<int> mayMin,
      Value<int> mayMax,
      Value<double> mayAvg,
      Value<int> mayPrec,
      Value<int> juneMin,
      Value<int> juneMax,
      Value<double> juneAvg,
      Value<int> junePrec,
      Value<int> julyMin,
      Value<int> julyMax,
      Value<double> julyAvg,
      Value<int> julyPrec,
      Value<int> augustMin,
      Value<int> augustMax,
      Value<double> augustAvg,
      Value<int> augustPrec,
      Value<int> septemberMin,
      Value<int> septemberMax,
      Value<double> septemberAvg,
      Value<int> septemberPrec,
      Value<int> octoberMin,
      Value<int> octoberMax,
      Value<double> octoberAvg,
      Value<int> octoberPrec,
      Value<int> novemberMin,
      Value<int> novemberMax,
      Value<double> novemberAvg,
      Value<int> novemberPrec,
      Value<int> decemberMin,
      Value<int> decemberMax,
      Value<double> decemberAvg,
      Value<int> decemberPrec,
      Value<DateTime> creationDate}) {
    return WeathersCompanion(
      id: id ?? this.id,
      country: country ?? this.country,
      januaryMin: januaryMin ?? this.januaryMin,
      januaryMax: januaryMax ?? this.januaryMax,
      januaryAvg: januaryAvg ?? this.januaryAvg,
      januaryPrec: januaryPrec ?? this.januaryPrec,
      februaryMin: februaryMin ?? this.februaryMin,
      februaryMax: februaryMax ?? this.februaryMax,
      februaryAvg: februaryAvg ?? this.februaryAvg,
      februaryPrec: februaryPrec ?? this.februaryPrec,
      marchMin: marchMin ?? this.marchMin,
      marchMax: marchMax ?? this.marchMax,
      marchAvg: marchAvg ?? this.marchAvg,
      marchPrec: marchPrec ?? this.marchPrec,
      aprilMin: aprilMin ?? this.aprilMin,
      aprilMax: aprilMax ?? this.aprilMax,
      aprilAvg: aprilAvg ?? this.aprilAvg,
      aprilPrec: aprilPrec ?? this.aprilPrec,
      mayMin: mayMin ?? this.mayMin,
      mayMax: mayMax ?? this.mayMax,
      mayAvg: mayAvg ?? this.mayAvg,
      mayPrec: mayPrec ?? this.mayPrec,
      juneMin: juneMin ?? this.juneMin,
      juneMax: juneMax ?? this.juneMax,
      juneAvg: juneAvg ?? this.juneAvg,
      junePrec: junePrec ?? this.junePrec,
      julyMin: julyMin ?? this.julyMin,
      julyMax: julyMax ?? this.julyMax,
      julyAvg: julyAvg ?? this.julyAvg,
      julyPrec: julyPrec ?? this.julyPrec,
      augustMin: augustMin ?? this.augustMin,
      augustMax: augustMax ?? this.augustMax,
      augustAvg: augustAvg ?? this.augustAvg,
      augustPrec: augustPrec ?? this.augustPrec,
      septemberMin: septemberMin ?? this.septemberMin,
      septemberMax: septemberMax ?? this.septemberMax,
      septemberAvg: septemberAvg ?? this.septemberAvg,
      septemberPrec: septemberPrec ?? this.septemberPrec,
      octoberMin: octoberMin ?? this.octoberMin,
      octoberMax: octoberMax ?? this.octoberMax,
      octoberAvg: octoberAvg ?? this.octoberAvg,
      octoberPrec: octoberPrec ?? this.octoberPrec,
      novemberMin: novemberMin ?? this.novemberMin,
      novemberMax: novemberMax ?? this.novemberMax,
      novemberAvg: novemberAvg ?? this.novemberAvg,
      novemberPrec: novemberPrec ?? this.novemberPrec,
      decemberMin: decemberMin ?? this.decemberMin,
      decemberMax: decemberMax ?? this.decemberMax,
      decemberAvg: decemberAvg ?? this.decemberAvg,
      decemberPrec: decemberPrec ?? this.decemberPrec,
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
    if (januaryMin.present) {
      map['january_min'] = Variable<int>(januaryMin.value);
    }
    if (januaryMax.present) {
      map['january_max'] = Variable<int>(januaryMax.value);
    }
    if (januaryAvg.present) {
      map['january_avg'] = Variable<double>(januaryAvg.value);
    }
    if (januaryPrec.present) {
      map['january_prec'] = Variable<int>(januaryPrec.value);
    }
    if (februaryMin.present) {
      map['february_min'] = Variable<int>(februaryMin.value);
    }
    if (februaryMax.present) {
      map['february_max'] = Variable<int>(februaryMax.value);
    }
    if (februaryAvg.present) {
      map['february_avg'] = Variable<double>(februaryAvg.value);
    }
    if (februaryPrec.present) {
      map['february_prec'] = Variable<int>(februaryPrec.value);
    }
    if (marchMin.present) {
      map['march_min'] = Variable<int>(marchMin.value);
    }
    if (marchMax.present) {
      map['march_max'] = Variable<int>(marchMax.value);
    }
    if (marchAvg.present) {
      map['march_avg'] = Variable<double>(marchAvg.value);
    }
    if (marchPrec.present) {
      map['march_prec'] = Variable<int>(marchPrec.value);
    }
    if (aprilMin.present) {
      map['april_min'] = Variable<int>(aprilMin.value);
    }
    if (aprilMax.present) {
      map['april_max'] = Variable<int>(aprilMax.value);
    }
    if (aprilAvg.present) {
      map['april_avg'] = Variable<double>(aprilAvg.value);
    }
    if (aprilPrec.present) {
      map['april_prec'] = Variable<int>(aprilPrec.value);
    }
    if (mayMin.present) {
      map['may_min'] = Variable<int>(mayMin.value);
    }
    if (mayMax.present) {
      map['may_max'] = Variable<int>(mayMax.value);
    }
    if (mayAvg.present) {
      map['may_avg'] = Variable<double>(mayAvg.value);
    }
    if (mayPrec.present) {
      map['may_prec'] = Variable<int>(mayPrec.value);
    }
    if (juneMin.present) {
      map['june_min'] = Variable<int>(juneMin.value);
    }
    if (juneMax.present) {
      map['june_max'] = Variable<int>(juneMax.value);
    }
    if (juneAvg.present) {
      map['june_avg'] = Variable<double>(juneAvg.value);
    }
    if (junePrec.present) {
      map['june_prec'] = Variable<int>(junePrec.value);
    }
    if (julyMin.present) {
      map['july_min'] = Variable<int>(julyMin.value);
    }
    if (julyMax.present) {
      map['july_max'] = Variable<int>(julyMax.value);
    }
    if (julyAvg.present) {
      map['july_avg'] = Variable<double>(julyAvg.value);
    }
    if (julyPrec.present) {
      map['july_prec'] = Variable<int>(julyPrec.value);
    }
    if (augustMin.present) {
      map['august_min'] = Variable<int>(augustMin.value);
    }
    if (augustMax.present) {
      map['august_max'] = Variable<int>(augustMax.value);
    }
    if (augustAvg.present) {
      map['august_avg'] = Variable<double>(augustAvg.value);
    }
    if (augustPrec.present) {
      map['august_prec'] = Variable<int>(augustPrec.value);
    }
    if (septemberMin.present) {
      map['september_min'] = Variable<int>(septemberMin.value);
    }
    if (septemberMax.present) {
      map['september_max'] = Variable<int>(septemberMax.value);
    }
    if (septemberAvg.present) {
      map['september_avg'] = Variable<double>(septemberAvg.value);
    }
    if (septemberPrec.present) {
      map['september_prec'] = Variable<int>(septemberPrec.value);
    }
    if (octoberMin.present) {
      map['october_min'] = Variable<int>(octoberMin.value);
    }
    if (octoberMax.present) {
      map['october_max'] = Variable<int>(octoberMax.value);
    }
    if (octoberAvg.present) {
      map['october_avg'] = Variable<double>(octoberAvg.value);
    }
    if (octoberPrec.present) {
      map['october_prec'] = Variable<int>(octoberPrec.value);
    }
    if (novemberMin.present) {
      map['november_min'] = Variable<int>(novemberMin.value);
    }
    if (novemberMax.present) {
      map['november_max'] = Variable<int>(novemberMax.value);
    }
    if (novemberAvg.present) {
      map['november_avg'] = Variable<double>(novemberAvg.value);
    }
    if (novemberPrec.present) {
      map['november_prec'] = Variable<int>(novemberPrec.value);
    }
    if (decemberMin.present) {
      map['december_min'] = Variable<int>(decemberMin.value);
    }
    if (decemberMax.present) {
      map['december_max'] = Variable<int>(decemberMax.value);
    }
    if (decemberAvg.present) {
      map['december_avg'] = Variable<double>(decemberAvg.value);
    }
    if (decemberPrec.present) {
      map['december_prec'] = Variable<int>(decemberPrec.value);
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
          ..write('januaryMin: $januaryMin, ')
          ..write('januaryMax: $januaryMax, ')
          ..write('januaryAvg: $januaryAvg, ')
          ..write('januaryPrec: $januaryPrec, ')
          ..write('februaryMin: $februaryMin, ')
          ..write('februaryMax: $februaryMax, ')
          ..write('februaryAvg: $februaryAvg, ')
          ..write('februaryPrec: $februaryPrec, ')
          ..write('marchMin: $marchMin, ')
          ..write('marchMax: $marchMax, ')
          ..write('marchAvg: $marchAvg, ')
          ..write('marchPrec: $marchPrec, ')
          ..write('aprilMin: $aprilMin, ')
          ..write('aprilMax: $aprilMax, ')
          ..write('aprilAvg: $aprilAvg, ')
          ..write('aprilPrec: $aprilPrec, ')
          ..write('mayMin: $mayMin, ')
          ..write('mayMax: $mayMax, ')
          ..write('mayAvg: $mayAvg, ')
          ..write('mayPrec: $mayPrec, ')
          ..write('juneMin: $juneMin, ')
          ..write('juneMax: $juneMax, ')
          ..write('juneAvg: $juneAvg, ')
          ..write('junePrec: $junePrec, ')
          ..write('julyMin: $julyMin, ')
          ..write('julyMax: $julyMax, ')
          ..write('julyAvg: $julyAvg, ')
          ..write('julyPrec: $julyPrec, ')
          ..write('augustMin: $augustMin, ')
          ..write('augustMax: $augustMax, ')
          ..write('augustAvg: $augustAvg, ')
          ..write('augustPrec: $augustPrec, ')
          ..write('septemberMin: $septemberMin, ')
          ..write('septemberMax: $septemberMax, ')
          ..write('septemberAvg: $septemberAvg, ')
          ..write('septemberPrec: $septemberPrec, ')
          ..write('octoberMin: $octoberMin, ')
          ..write('octoberMax: $octoberMax, ')
          ..write('octoberAvg: $octoberAvg, ')
          ..write('octoberPrec: $octoberPrec, ')
          ..write('novemberMin: $novemberMin, ')
          ..write('novemberMax: $novemberMax, ')
          ..write('novemberAvg: $novemberAvg, ')
          ..write('novemberPrec: $novemberPrec, ')
          ..write('decemberMin: $decemberMin, ')
          ..write('decemberMax: $decemberMax, ')
          ..write('decemberAvg: $decemberAvg, ')
          ..write('decemberPrec: $decemberPrec, ')
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

  final VerificationMeta _januaryMinMeta = const VerificationMeta('januaryMin');
  GeneratedIntColumn _januaryMin;
  @override
  GeneratedIntColumn get januaryMin => _januaryMin ??= _constructJanuaryMin();
  GeneratedIntColumn _constructJanuaryMin() {
    return GeneratedIntColumn(
      'january_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _januaryMaxMeta = const VerificationMeta('januaryMax');
  GeneratedIntColumn _januaryMax;
  @override
  GeneratedIntColumn get januaryMax => _januaryMax ??= _constructJanuaryMax();
  GeneratedIntColumn _constructJanuaryMax() {
    return GeneratedIntColumn(
      'january_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _januaryAvgMeta = const VerificationMeta('januaryAvg');
  GeneratedRealColumn _januaryAvg;
  @override
  GeneratedRealColumn get januaryAvg => _januaryAvg ??= _constructJanuaryAvg();
  GeneratedRealColumn _constructJanuaryAvg() {
    return GeneratedRealColumn(
      'january_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _januaryPrecMeta =
      const VerificationMeta('januaryPrec');
  GeneratedIntColumn _januaryPrec;
  @override
  GeneratedIntColumn get januaryPrec =>
      _januaryPrec ??= _constructJanuaryPrec();
  GeneratedIntColumn _constructJanuaryPrec() {
    return GeneratedIntColumn(
      'january_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _februaryMinMeta =
      const VerificationMeta('februaryMin');
  GeneratedIntColumn _februaryMin;
  @override
  GeneratedIntColumn get februaryMin =>
      _februaryMin ??= _constructFebruaryMin();
  GeneratedIntColumn _constructFebruaryMin() {
    return GeneratedIntColumn(
      'february_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _februaryMaxMeta =
      const VerificationMeta('februaryMax');
  GeneratedIntColumn _februaryMax;
  @override
  GeneratedIntColumn get februaryMax =>
      _februaryMax ??= _constructFebruaryMax();
  GeneratedIntColumn _constructFebruaryMax() {
    return GeneratedIntColumn(
      'february_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _februaryAvgMeta =
      const VerificationMeta('februaryAvg');
  GeneratedRealColumn _februaryAvg;
  @override
  GeneratedRealColumn get februaryAvg =>
      _februaryAvg ??= _constructFebruaryAvg();
  GeneratedRealColumn _constructFebruaryAvg() {
    return GeneratedRealColumn(
      'february_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _februaryPrecMeta =
      const VerificationMeta('februaryPrec');
  GeneratedIntColumn _februaryPrec;
  @override
  GeneratedIntColumn get februaryPrec =>
      _februaryPrec ??= _constructFebruaryPrec();
  GeneratedIntColumn _constructFebruaryPrec() {
    return GeneratedIntColumn(
      'february_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _marchMinMeta = const VerificationMeta('marchMin');
  GeneratedIntColumn _marchMin;
  @override
  GeneratedIntColumn get marchMin => _marchMin ??= _constructMarchMin();
  GeneratedIntColumn _constructMarchMin() {
    return GeneratedIntColumn(
      'march_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _marchMaxMeta = const VerificationMeta('marchMax');
  GeneratedIntColumn _marchMax;
  @override
  GeneratedIntColumn get marchMax => _marchMax ??= _constructMarchMax();
  GeneratedIntColumn _constructMarchMax() {
    return GeneratedIntColumn(
      'march_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _marchAvgMeta = const VerificationMeta('marchAvg');
  GeneratedRealColumn _marchAvg;
  @override
  GeneratedRealColumn get marchAvg => _marchAvg ??= _constructMarchAvg();
  GeneratedRealColumn _constructMarchAvg() {
    return GeneratedRealColumn(
      'march_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _marchPrecMeta = const VerificationMeta('marchPrec');
  GeneratedIntColumn _marchPrec;
  @override
  GeneratedIntColumn get marchPrec => _marchPrec ??= _constructMarchPrec();
  GeneratedIntColumn _constructMarchPrec() {
    return GeneratedIntColumn(
      'march_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aprilMinMeta = const VerificationMeta('aprilMin');
  GeneratedIntColumn _aprilMin;
  @override
  GeneratedIntColumn get aprilMin => _aprilMin ??= _constructAprilMin();
  GeneratedIntColumn _constructAprilMin() {
    return GeneratedIntColumn(
      'april_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aprilMaxMeta = const VerificationMeta('aprilMax');
  GeneratedIntColumn _aprilMax;
  @override
  GeneratedIntColumn get aprilMax => _aprilMax ??= _constructAprilMax();
  GeneratedIntColumn _constructAprilMax() {
    return GeneratedIntColumn(
      'april_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aprilAvgMeta = const VerificationMeta('aprilAvg');
  GeneratedRealColumn _aprilAvg;
  @override
  GeneratedRealColumn get aprilAvg => _aprilAvg ??= _constructAprilAvg();
  GeneratedRealColumn _constructAprilAvg() {
    return GeneratedRealColumn(
      'april_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _aprilPrecMeta = const VerificationMeta('aprilPrec');
  GeneratedIntColumn _aprilPrec;
  @override
  GeneratedIntColumn get aprilPrec => _aprilPrec ??= _constructAprilPrec();
  GeneratedIntColumn _constructAprilPrec() {
    return GeneratedIntColumn(
      'april_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _mayMinMeta = const VerificationMeta('mayMin');
  GeneratedIntColumn _mayMin;
  @override
  GeneratedIntColumn get mayMin => _mayMin ??= _constructMayMin();
  GeneratedIntColumn _constructMayMin() {
    return GeneratedIntColumn(
      'may_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _mayMaxMeta = const VerificationMeta('mayMax');
  GeneratedIntColumn _mayMax;
  @override
  GeneratedIntColumn get mayMax => _mayMax ??= _constructMayMax();
  GeneratedIntColumn _constructMayMax() {
    return GeneratedIntColumn(
      'may_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _mayAvgMeta = const VerificationMeta('mayAvg');
  GeneratedRealColumn _mayAvg;
  @override
  GeneratedRealColumn get mayAvg => _mayAvg ??= _constructMayAvg();
  GeneratedRealColumn _constructMayAvg() {
    return GeneratedRealColumn(
      'may_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _mayPrecMeta = const VerificationMeta('mayPrec');
  GeneratedIntColumn _mayPrec;
  @override
  GeneratedIntColumn get mayPrec => _mayPrec ??= _constructMayPrec();
  GeneratedIntColumn _constructMayPrec() {
    return GeneratedIntColumn(
      'may_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _juneMinMeta = const VerificationMeta('juneMin');
  GeneratedIntColumn _juneMin;
  @override
  GeneratedIntColumn get juneMin => _juneMin ??= _constructJuneMin();
  GeneratedIntColumn _constructJuneMin() {
    return GeneratedIntColumn(
      'june_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _juneMaxMeta = const VerificationMeta('juneMax');
  GeneratedIntColumn _juneMax;
  @override
  GeneratedIntColumn get juneMax => _juneMax ??= _constructJuneMax();
  GeneratedIntColumn _constructJuneMax() {
    return GeneratedIntColumn(
      'june_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _juneAvgMeta = const VerificationMeta('juneAvg');
  GeneratedRealColumn _juneAvg;
  @override
  GeneratedRealColumn get juneAvg => _juneAvg ??= _constructJuneAvg();
  GeneratedRealColumn _constructJuneAvg() {
    return GeneratedRealColumn(
      'june_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _junePrecMeta = const VerificationMeta('junePrec');
  GeneratedIntColumn _junePrec;
  @override
  GeneratedIntColumn get junePrec => _junePrec ??= _constructJunePrec();
  GeneratedIntColumn _constructJunePrec() {
    return GeneratedIntColumn(
      'june_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _julyMinMeta = const VerificationMeta('julyMin');
  GeneratedIntColumn _julyMin;
  @override
  GeneratedIntColumn get julyMin => _julyMin ??= _constructJulyMin();
  GeneratedIntColumn _constructJulyMin() {
    return GeneratedIntColumn(
      'july_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _julyMaxMeta = const VerificationMeta('julyMax');
  GeneratedIntColumn _julyMax;
  @override
  GeneratedIntColumn get julyMax => _julyMax ??= _constructJulyMax();
  GeneratedIntColumn _constructJulyMax() {
    return GeneratedIntColumn(
      'july_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _julyAvgMeta = const VerificationMeta('julyAvg');
  GeneratedRealColumn _julyAvg;
  @override
  GeneratedRealColumn get julyAvg => _julyAvg ??= _constructJulyAvg();
  GeneratedRealColumn _constructJulyAvg() {
    return GeneratedRealColumn(
      'july_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _julyPrecMeta = const VerificationMeta('julyPrec');
  GeneratedIntColumn _julyPrec;
  @override
  GeneratedIntColumn get julyPrec => _julyPrec ??= _constructJulyPrec();
  GeneratedIntColumn _constructJulyPrec() {
    return GeneratedIntColumn(
      'july_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _augustMinMeta = const VerificationMeta('augustMin');
  GeneratedIntColumn _augustMin;
  @override
  GeneratedIntColumn get augustMin => _augustMin ??= _constructAugustMin();
  GeneratedIntColumn _constructAugustMin() {
    return GeneratedIntColumn(
      'august_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _augustMaxMeta = const VerificationMeta('augustMax');
  GeneratedIntColumn _augustMax;
  @override
  GeneratedIntColumn get augustMax => _augustMax ??= _constructAugustMax();
  GeneratedIntColumn _constructAugustMax() {
    return GeneratedIntColumn(
      'august_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _augustAvgMeta = const VerificationMeta('augustAvg');
  GeneratedRealColumn _augustAvg;
  @override
  GeneratedRealColumn get augustAvg => _augustAvg ??= _constructAugustAvg();
  GeneratedRealColumn _constructAugustAvg() {
    return GeneratedRealColumn(
      'august_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _augustPrecMeta = const VerificationMeta('augustPrec');
  GeneratedIntColumn _augustPrec;
  @override
  GeneratedIntColumn get augustPrec => _augustPrec ??= _constructAugustPrec();
  GeneratedIntColumn _constructAugustPrec() {
    return GeneratedIntColumn(
      'august_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _septemberMinMeta =
      const VerificationMeta('septemberMin');
  GeneratedIntColumn _septemberMin;
  @override
  GeneratedIntColumn get septemberMin =>
      _septemberMin ??= _constructSeptemberMin();
  GeneratedIntColumn _constructSeptemberMin() {
    return GeneratedIntColumn(
      'september_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _septemberMaxMeta =
      const VerificationMeta('septemberMax');
  GeneratedIntColumn _septemberMax;
  @override
  GeneratedIntColumn get septemberMax =>
      _septemberMax ??= _constructSeptemberMax();
  GeneratedIntColumn _constructSeptemberMax() {
    return GeneratedIntColumn(
      'september_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _septemberAvgMeta =
      const VerificationMeta('septemberAvg');
  GeneratedRealColumn _septemberAvg;
  @override
  GeneratedRealColumn get septemberAvg =>
      _septemberAvg ??= _constructSeptemberAvg();
  GeneratedRealColumn _constructSeptemberAvg() {
    return GeneratedRealColumn(
      'september_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _septemberPrecMeta =
      const VerificationMeta('septemberPrec');
  GeneratedIntColumn _septemberPrec;
  @override
  GeneratedIntColumn get septemberPrec =>
      _septemberPrec ??= _constructSeptemberPrec();
  GeneratedIntColumn _constructSeptemberPrec() {
    return GeneratedIntColumn(
      'september_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _octoberMinMeta = const VerificationMeta('octoberMin');
  GeneratedIntColumn _octoberMin;
  @override
  GeneratedIntColumn get octoberMin => _octoberMin ??= _constructOctoberMin();
  GeneratedIntColumn _constructOctoberMin() {
    return GeneratedIntColumn(
      'october_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _octoberMaxMeta = const VerificationMeta('octoberMax');
  GeneratedIntColumn _octoberMax;
  @override
  GeneratedIntColumn get octoberMax => _octoberMax ??= _constructOctoberMax();
  GeneratedIntColumn _constructOctoberMax() {
    return GeneratedIntColumn(
      'october_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _octoberAvgMeta = const VerificationMeta('octoberAvg');
  GeneratedRealColumn _octoberAvg;
  @override
  GeneratedRealColumn get octoberAvg => _octoberAvg ??= _constructOctoberAvg();
  GeneratedRealColumn _constructOctoberAvg() {
    return GeneratedRealColumn(
      'october_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _octoberPrecMeta =
      const VerificationMeta('octoberPrec');
  GeneratedIntColumn _octoberPrec;
  @override
  GeneratedIntColumn get octoberPrec =>
      _octoberPrec ??= _constructOctoberPrec();
  GeneratedIntColumn _constructOctoberPrec() {
    return GeneratedIntColumn(
      'october_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _novemberMinMeta =
      const VerificationMeta('novemberMin');
  GeneratedIntColumn _novemberMin;
  @override
  GeneratedIntColumn get novemberMin =>
      _novemberMin ??= _constructNovemberMin();
  GeneratedIntColumn _constructNovemberMin() {
    return GeneratedIntColumn(
      'november_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _novemberMaxMeta =
      const VerificationMeta('novemberMax');
  GeneratedIntColumn _novemberMax;
  @override
  GeneratedIntColumn get novemberMax =>
      _novemberMax ??= _constructNovemberMax();
  GeneratedIntColumn _constructNovemberMax() {
    return GeneratedIntColumn(
      'november_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _novemberAvgMeta =
      const VerificationMeta('novemberAvg');
  GeneratedRealColumn _novemberAvg;
  @override
  GeneratedRealColumn get novemberAvg =>
      _novemberAvg ??= _constructNovemberAvg();
  GeneratedRealColumn _constructNovemberAvg() {
    return GeneratedRealColumn(
      'november_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _novemberPrecMeta =
      const VerificationMeta('novemberPrec');
  GeneratedIntColumn _novemberPrec;
  @override
  GeneratedIntColumn get novemberPrec =>
      _novemberPrec ??= _constructNovemberPrec();
  GeneratedIntColumn _constructNovemberPrec() {
    return GeneratedIntColumn(
      'november_prec',
      $tableName,
      true,
    );
  }

  final VerificationMeta _decemberMinMeta =
      const VerificationMeta('decemberMin');
  GeneratedIntColumn _decemberMin;
  @override
  GeneratedIntColumn get decemberMin =>
      _decemberMin ??= _constructDecemberMin();
  GeneratedIntColumn _constructDecemberMin() {
    return GeneratedIntColumn(
      'december_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _decemberMaxMeta =
      const VerificationMeta('decemberMax');
  GeneratedIntColumn _decemberMax;
  @override
  GeneratedIntColumn get decemberMax =>
      _decemberMax ??= _constructDecemberMax();
  GeneratedIntColumn _constructDecemberMax() {
    return GeneratedIntColumn(
      'december_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _decemberAvgMeta =
      const VerificationMeta('decemberAvg');
  GeneratedRealColumn _decemberAvg;
  @override
  GeneratedRealColumn get decemberAvg =>
      _decemberAvg ??= _constructDecemberAvg();
  GeneratedRealColumn _constructDecemberAvg() {
    return GeneratedRealColumn(
      'december_avg',
      $tableName,
      true,
    );
  }

  final VerificationMeta _decemberPrecMeta =
      const VerificationMeta('decemberPrec');
  GeneratedIntColumn _decemberPrec;
  @override
  GeneratedIntColumn get decemberPrec =>
      _decemberPrec ??= _constructDecemberPrec();
  GeneratedIntColumn _constructDecemberPrec() {
    return GeneratedIntColumn(
      'december_prec',
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
        januaryMin,
        januaryMax,
        januaryAvg,
        januaryPrec,
        februaryMin,
        februaryMax,
        februaryAvg,
        februaryPrec,
        marchMin,
        marchMax,
        marchAvg,
        marchPrec,
        aprilMin,
        aprilMax,
        aprilAvg,
        aprilPrec,
        mayMin,
        mayMax,
        mayAvg,
        mayPrec,
        juneMin,
        juneMax,
        juneAvg,
        junePrec,
        julyMin,
        julyMax,
        julyAvg,
        julyPrec,
        augustMin,
        augustMax,
        augustAvg,
        augustPrec,
        septemberMin,
        septemberMax,
        septemberAvg,
        septemberPrec,
        octoberMin,
        octoberMax,
        octoberAvg,
        octoberPrec,
        novemberMin,
        novemberMax,
        novemberAvg,
        novemberPrec,
        decemberMin,
        decemberMax,
        decemberAvg,
        decemberPrec,
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
    if (data.containsKey('january_min')) {
      context.handle(
          _januaryMinMeta,
          januaryMin.isAcceptableOrUnknown(
              data['january_min'], _januaryMinMeta));
    }
    if (data.containsKey('january_max')) {
      context.handle(
          _januaryMaxMeta,
          januaryMax.isAcceptableOrUnknown(
              data['january_max'], _januaryMaxMeta));
    }
    if (data.containsKey('january_avg')) {
      context.handle(
          _januaryAvgMeta,
          januaryAvg.isAcceptableOrUnknown(
              data['january_avg'], _januaryAvgMeta));
    }
    if (data.containsKey('january_prec')) {
      context.handle(
          _januaryPrecMeta,
          januaryPrec.isAcceptableOrUnknown(
              data['january_prec'], _januaryPrecMeta));
    }
    if (data.containsKey('february_min')) {
      context.handle(
          _februaryMinMeta,
          februaryMin.isAcceptableOrUnknown(
              data['february_min'], _februaryMinMeta));
    }
    if (data.containsKey('february_max')) {
      context.handle(
          _februaryMaxMeta,
          februaryMax.isAcceptableOrUnknown(
              data['february_max'], _februaryMaxMeta));
    }
    if (data.containsKey('february_avg')) {
      context.handle(
          _februaryAvgMeta,
          februaryAvg.isAcceptableOrUnknown(
              data['february_avg'], _februaryAvgMeta));
    }
    if (data.containsKey('february_prec')) {
      context.handle(
          _februaryPrecMeta,
          februaryPrec.isAcceptableOrUnknown(
              data['february_prec'], _februaryPrecMeta));
    }
    if (data.containsKey('march_min')) {
      context.handle(_marchMinMeta,
          marchMin.isAcceptableOrUnknown(data['march_min'], _marchMinMeta));
    }
    if (data.containsKey('march_max')) {
      context.handle(_marchMaxMeta,
          marchMax.isAcceptableOrUnknown(data['march_max'], _marchMaxMeta));
    }
    if (data.containsKey('march_avg')) {
      context.handle(_marchAvgMeta,
          marchAvg.isAcceptableOrUnknown(data['march_avg'], _marchAvgMeta));
    }
    if (data.containsKey('march_prec')) {
      context.handle(_marchPrecMeta,
          marchPrec.isAcceptableOrUnknown(data['march_prec'], _marchPrecMeta));
    }
    if (data.containsKey('april_min')) {
      context.handle(_aprilMinMeta,
          aprilMin.isAcceptableOrUnknown(data['april_min'], _aprilMinMeta));
    }
    if (data.containsKey('april_max')) {
      context.handle(_aprilMaxMeta,
          aprilMax.isAcceptableOrUnknown(data['april_max'], _aprilMaxMeta));
    }
    if (data.containsKey('april_avg')) {
      context.handle(_aprilAvgMeta,
          aprilAvg.isAcceptableOrUnknown(data['april_avg'], _aprilAvgMeta));
    }
    if (data.containsKey('april_prec')) {
      context.handle(_aprilPrecMeta,
          aprilPrec.isAcceptableOrUnknown(data['april_prec'], _aprilPrecMeta));
    }
    if (data.containsKey('may_min')) {
      context.handle(_mayMinMeta,
          mayMin.isAcceptableOrUnknown(data['may_min'], _mayMinMeta));
    }
    if (data.containsKey('may_max')) {
      context.handle(_mayMaxMeta,
          mayMax.isAcceptableOrUnknown(data['may_max'], _mayMaxMeta));
    }
    if (data.containsKey('may_avg')) {
      context.handle(_mayAvgMeta,
          mayAvg.isAcceptableOrUnknown(data['may_avg'], _mayAvgMeta));
    }
    if (data.containsKey('may_prec')) {
      context.handle(_mayPrecMeta,
          mayPrec.isAcceptableOrUnknown(data['may_prec'], _mayPrecMeta));
    }
    if (data.containsKey('june_min')) {
      context.handle(_juneMinMeta,
          juneMin.isAcceptableOrUnknown(data['june_min'], _juneMinMeta));
    }
    if (data.containsKey('june_max')) {
      context.handle(_juneMaxMeta,
          juneMax.isAcceptableOrUnknown(data['june_max'], _juneMaxMeta));
    }
    if (data.containsKey('june_avg')) {
      context.handle(_juneAvgMeta,
          juneAvg.isAcceptableOrUnknown(data['june_avg'], _juneAvgMeta));
    }
    if (data.containsKey('june_prec')) {
      context.handle(_junePrecMeta,
          junePrec.isAcceptableOrUnknown(data['june_prec'], _junePrecMeta));
    }
    if (data.containsKey('july_min')) {
      context.handle(_julyMinMeta,
          julyMin.isAcceptableOrUnknown(data['july_min'], _julyMinMeta));
    }
    if (data.containsKey('july_max')) {
      context.handle(_julyMaxMeta,
          julyMax.isAcceptableOrUnknown(data['july_max'], _julyMaxMeta));
    }
    if (data.containsKey('july_avg')) {
      context.handle(_julyAvgMeta,
          julyAvg.isAcceptableOrUnknown(data['july_avg'], _julyAvgMeta));
    }
    if (data.containsKey('july_prec')) {
      context.handle(_julyPrecMeta,
          julyPrec.isAcceptableOrUnknown(data['july_prec'], _julyPrecMeta));
    }
    if (data.containsKey('august_min')) {
      context.handle(_augustMinMeta,
          augustMin.isAcceptableOrUnknown(data['august_min'], _augustMinMeta));
    }
    if (data.containsKey('august_max')) {
      context.handle(_augustMaxMeta,
          augustMax.isAcceptableOrUnknown(data['august_max'], _augustMaxMeta));
    }
    if (data.containsKey('august_avg')) {
      context.handle(_augustAvgMeta,
          augustAvg.isAcceptableOrUnknown(data['august_avg'], _augustAvgMeta));
    }
    if (data.containsKey('august_prec')) {
      context.handle(
          _augustPrecMeta,
          augustPrec.isAcceptableOrUnknown(
              data['august_prec'], _augustPrecMeta));
    }
    if (data.containsKey('september_min')) {
      context.handle(
          _septemberMinMeta,
          septemberMin.isAcceptableOrUnknown(
              data['september_min'], _septemberMinMeta));
    }
    if (data.containsKey('september_max')) {
      context.handle(
          _septemberMaxMeta,
          septemberMax.isAcceptableOrUnknown(
              data['september_max'], _septemberMaxMeta));
    }
    if (data.containsKey('september_avg')) {
      context.handle(
          _septemberAvgMeta,
          septemberAvg.isAcceptableOrUnknown(
              data['september_avg'], _septemberAvgMeta));
    }
    if (data.containsKey('september_prec')) {
      context.handle(
          _septemberPrecMeta,
          septemberPrec.isAcceptableOrUnknown(
              data['september_prec'], _septemberPrecMeta));
    }
    if (data.containsKey('october_min')) {
      context.handle(
          _octoberMinMeta,
          octoberMin.isAcceptableOrUnknown(
              data['october_min'], _octoberMinMeta));
    }
    if (data.containsKey('october_max')) {
      context.handle(
          _octoberMaxMeta,
          octoberMax.isAcceptableOrUnknown(
              data['october_max'], _octoberMaxMeta));
    }
    if (data.containsKey('october_avg')) {
      context.handle(
          _octoberAvgMeta,
          octoberAvg.isAcceptableOrUnknown(
              data['october_avg'], _octoberAvgMeta));
    }
    if (data.containsKey('october_prec')) {
      context.handle(
          _octoberPrecMeta,
          octoberPrec.isAcceptableOrUnknown(
              data['october_prec'], _octoberPrecMeta));
    }
    if (data.containsKey('november_min')) {
      context.handle(
          _novemberMinMeta,
          novemberMin.isAcceptableOrUnknown(
              data['november_min'], _novemberMinMeta));
    }
    if (data.containsKey('november_max')) {
      context.handle(
          _novemberMaxMeta,
          novemberMax.isAcceptableOrUnknown(
              data['november_max'], _novemberMaxMeta));
    }
    if (data.containsKey('november_avg')) {
      context.handle(
          _novemberAvgMeta,
          novemberAvg.isAcceptableOrUnknown(
              data['november_avg'], _novemberAvgMeta));
    }
    if (data.containsKey('november_prec')) {
      context.handle(
          _novemberPrecMeta,
          novemberPrec.isAcceptableOrUnknown(
              data['november_prec'], _novemberPrecMeta));
    }
    if (data.containsKey('december_min')) {
      context.handle(
          _decemberMinMeta,
          decemberMin.isAcceptableOrUnknown(
              data['december_min'], _decemberMinMeta));
    }
    if (data.containsKey('december_max')) {
      context.handle(
          _decemberMaxMeta,
          decemberMax.isAcceptableOrUnknown(
              data['december_max'], _decemberMaxMeta));
    }
    if (data.containsKey('december_avg')) {
      context.handle(
          _decemberAvgMeta,
          decemberAvg.isAcceptableOrUnknown(
              data['december_avg'], _decemberAvgMeta));
    }
    if (data.containsKey('december_prec')) {
      context.handle(
          _decemberPrecMeta,
          decemberPrec.isAcceptableOrUnknown(
              data['december_prec'], _decemberPrecMeta));
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
