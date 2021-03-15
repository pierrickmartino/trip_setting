// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Country extends DataClass implements Insertable<Country> {
  final int id;
  final String label;
  final String currency;
  final int security;
  final DateTime creationDate;
  Country(
      {@required this.id,
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
      'label': serializer.toJson<String>(label),
      'currency': serializer.toJson<String>(currency),
      'security': serializer.toJson<int>(security),
      'creationDate': serializer.toJson<DateTime>(creationDate),
    };
  }

  Country copyWith(
          {int id,
          String label,
          String currency,
          int security,
          DateTime creationDate}) =>
      Country(
        id: id ?? this.id,
        label: label ?? this.label,
        currency: currency ?? this.currency,
        security: security ?? this.security,
        creationDate: creationDate ?? this.creationDate,
      );
  @override
  String toString() {
    return (StringBuffer('Country(')
          ..write('id: $id, ')
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
          label.hashCode,
          $mrjc(currency.hashCode,
              $mrjc(security.hashCode, creationDate.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Country &&
          other.id == this.id &&
          other.label == this.label &&
          other.currency == this.currency &&
          other.security == this.security &&
          other.creationDate == this.creationDate);
}

class CountriesCompanion extends UpdateCompanion<Country> {
  final Value<int> id;
  final Value<String> label;
  final Value<String> currency;
  final Value<int> security;
  final Value<DateTime> creationDate;
  const CountriesCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.currency = const Value.absent(),
    this.security = const Value.absent(),
    this.creationDate = const Value.absent(),
  });
  CountriesCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.currency = const Value.absent(),
    this.security = const Value.absent(),
    this.creationDate = const Value.absent(),
  });
  static Insertable<Country> custom({
    Expression<int> id,
    Expression<String> label,
    Expression<String> currency,
    Expression<int> security,
    Expression<DateTime> creationDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (currency != null) 'currency': currency,
      if (security != null) 'security': security,
      if (creationDate != null) 'creation_date': creationDate,
    });
  }

  CountriesCompanion copyWith(
      {Value<int> id,
      Value<String> label,
      Value<String> currency,
      Value<int> security,
      Value<DateTime> creationDate}) {
    return CountriesCompanion(
      id: id ?? this.id,
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
      [id, label, currency, security, creationDate];
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

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $CountriesTable _countries;
  $CountriesTable get countries => _countries ??= $CountriesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [countries];
}
