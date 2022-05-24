// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class DriftMachineTableCompanion extends UpdateCompanion<DriftMachineEntity> {
  final Value<int> id;
  final Value<int?> typeLutId;
  final Value<int?> actorId;
  final Value<int?> modelId;
  final Value<int?> profileLutId;
  final Value<String?> name;
  const DriftMachineTableCompanion({
    this.id = const Value.absent(),
    this.typeLutId = const Value.absent(),
    this.actorId = const Value.absent(),
    this.modelId = const Value.absent(),
    this.profileLutId = const Value.absent(),
    this.name = const Value.absent(),
  });
  DriftMachineTableCompanion.insert({
    this.id = const Value.absent(),
    this.typeLutId = const Value.absent(),
    this.actorId = const Value.absent(),
    this.modelId = const Value.absent(),
    this.profileLutId = const Value.absent(),
    this.name = const Value.absent(),
  });
  static Insertable<DriftMachineEntity> custom({
    Expression<int>? id,
    Expression<int?>? typeLutId,
    Expression<int?>? actorId,
    Expression<int?>? modelId,
    Expression<int?>? profileLutId,
    Expression<String?>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (typeLutId != null) 'typeLutId': typeLutId,
      if (actorId != null) 'actorId': actorId,
      if (modelId != null) 'modelId': modelId,
      if (profileLutId != null) 'profileLutId': profileLutId,
      if (name != null) 'name': name,
    });
  }

  DriftMachineTableCompanion copyWith(
      {Value<int>? id,
      Value<int?>? typeLutId,
      Value<int?>? actorId,
      Value<int?>? modelId,
      Value<int?>? profileLutId,
      Value<String?>? name}) {
    return DriftMachineTableCompanion(
      id: id ?? this.id,
      typeLutId: typeLutId ?? this.typeLutId,
      actorId: actorId ?? this.actorId,
      modelId: modelId ?? this.modelId,
      profileLutId: profileLutId ?? this.profileLutId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (typeLutId.present) {
      map['typeLutId'] = Variable<int?>(typeLutId.value);
    }
    if (actorId.present) {
      map['actorId'] = Variable<int?>(actorId.value);
    }
    if (modelId.present) {
      map['modelId'] = Variable<int?>(modelId.value);
    }
    if (profileLutId.present) {
      map['profileLutId'] = Variable<int?>(profileLutId.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftMachineTableCompanion(')
          ..write('id: $id, ')
          ..write('typeLutId: $typeLutId, ')
          ..write('actorId: $actorId, ')
          ..write('modelId: $modelId, ')
          ..write('profileLutId: $profileLutId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $DriftMachineTableTable extends DriftMachineTable
    with TableInfo<$DriftMachineTableTable, DriftMachineEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftMachineTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _typeLutIdMeta = const VerificationMeta('typeLutId');
  @override
  late final GeneratedColumn<int?> typeLutId = GeneratedColumn<int?>(
      'typeLutId', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _actorIdMeta = const VerificationMeta('actorId');
  @override
  late final GeneratedColumn<int?> actorId = GeneratedColumn<int?>(
      'actorId', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _modelIdMeta = const VerificationMeta('modelId');
  @override
  late final GeneratedColumn<int?> modelId = GeneratedColumn<int?>(
      'modelId', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _profileLutIdMeta =
      const VerificationMeta('profileLutId');
  @override
  late final GeneratedColumn<int?> profileLutId = GeneratedColumn<int?>(
      'profileLutId', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, typeLutId, actorId, modelId, profileLutId, name];
  @override
  String get aliasedName => _alias ?? 'machine';
  @override
  String get actualTableName => 'machine';
  @override
  VerificationContext validateIntegrity(Insertable<DriftMachineEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('typeLutId')) {
      context.handle(_typeLutIdMeta,
          typeLutId.isAcceptableOrUnknown(data['typeLutId']!, _typeLutIdMeta));
    }
    if (data.containsKey('actorId')) {
      context.handle(_actorIdMeta,
          actorId.isAcceptableOrUnknown(data['actorId']!, _actorIdMeta));
    }
    if (data.containsKey('modelId')) {
      context.handle(_modelIdMeta,
          modelId.isAcceptableOrUnknown(data['modelId']!, _modelIdMeta));
    }
    if (data.containsKey('profileLutId')) {
      context.handle(
          _profileLutIdMeta,
          profileLutId.isAcceptableOrUnknown(
              data['profileLutId']!, _profileLutIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftMachineEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftMachineEntity(
      const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}typeLutId']),
      const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}actorId']),
      const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}modelId']),
      const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}profileLutId']),
      const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }

  @override
  $DriftMachineTableTable createAlias(String alias) {
    return $DriftMachineTableTable(attachedDatabase, alias);
  }
}

class DriftMachineInfoTableCompanion
    extends UpdateCompanion<DriftMachineInfoEntity> {
  final Value<int> machineId;
  final Value<Main?> main;
  final Value<Details?> details;
  const DriftMachineInfoTableCompanion({
    this.machineId = const Value.absent(),
    this.main = const Value.absent(),
    this.details = const Value.absent(),
  });
  DriftMachineInfoTableCompanion.insert({
    this.machineId = const Value.absent(),
    this.main = const Value.absent(),
    this.details = const Value.absent(),
  });
  static Insertable<DriftMachineInfoEntity> custom({
    Expression<int>? machineId,
    Expression<Main?>? main,
    Expression<Details?>? details,
  }) {
    return RawValuesInsertable({
      if (machineId != null) 'machineId': machineId,
      if (main != null) 'main': main,
      if (details != null) 'details': details,
    });
  }

  DriftMachineInfoTableCompanion copyWith(
      {Value<int>? machineId, Value<Main?>? main, Value<Details?>? details}) {
    return DriftMachineInfoTableCompanion(
      machineId: machineId ?? this.machineId,
      main: main ?? this.main,
      details: details ?? this.details,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (machineId.present) {
      map['machineId'] = Variable<int>(machineId.value);
    }
    if (main.present) {
      final converter = $DriftMachineInfoTableTable.$converter0;
      map['main'] = Variable<String?>(converter.mapToSql(main.value));
    }
    if (details.present) {
      final converter = $DriftMachineInfoTableTable.$converter1;
      map['details'] = Variable<String?>(converter.mapToSql(details.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftMachineInfoTableCompanion(')
          ..write('machineId: $machineId, ')
          ..write('main: $main, ')
          ..write('details: $details')
          ..write(')'))
        .toString();
  }
}

class $DriftMachineInfoTableTable extends DriftMachineInfoTable
    with TableInfo<$DriftMachineInfoTableTable, DriftMachineInfoEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftMachineInfoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _machineIdMeta = const VerificationMeta('machineId');
  @override
  late final GeneratedColumn<int?> machineId = GeneratedColumn<int?>(
      'machineId', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _mainMeta = const VerificationMeta('main');
  @override
  late final GeneratedColumnWithTypeConverter<Main?, String?> main =
      GeneratedColumn<String?>('main', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<Main?>($DriftMachineInfoTableTable.$converter0);
  final VerificationMeta _detailsMeta = const VerificationMeta('details');
  @override
  late final GeneratedColumnWithTypeConverter<Details?, String?> details =
      GeneratedColumn<String?>('details', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<Details?>($DriftMachineInfoTableTable.$converter1);
  @override
  List<GeneratedColumn> get $columns => [machineId, main, details];
  @override
  String get aliasedName => _alias ?? 'machine_info';
  @override
  String get actualTableName => 'machine_info';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftMachineInfoEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('machineId')) {
      context.handle(_machineIdMeta,
          machineId.isAcceptableOrUnknown(data['machineId']!, _machineIdMeta));
    }
    context.handle(_mainMeta, const VerificationResult.success());
    context.handle(_detailsMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {machineId};
  @override
  DriftMachineInfoEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftMachineInfoEntity(
      machineId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}machineId'])!,
      main: $DriftMachineInfoTableTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}main'])),
      details: $DriftMachineInfoTableTable.$converter1.mapToDart(
          const StringType()
              .mapFromDatabaseResponse(data['${effectivePrefix}details'])),
    );
  }

  @override
  $DriftMachineInfoTableTable createAlias(String alias) {
    return $DriftMachineInfoTableTable(attachedDatabase, alias);
  }

  static TypeConverter<Main?, String> $converter0 = const DriftMainConverter();
  static TypeConverter<Details?, String> $converter1 =
      const DriftDetailsConverter();
}

class DriftMachineViewData extends DataClass {
  final int? id;
  final int? typeLutId;
  final int? actorId;
  final int? modelId;
  final int? profileLutId;
  final String? name;
  final String? main;
  final String? details;
  DriftMachineViewData(
      {this.id,
      this.typeLutId,
      this.actorId,
      this.modelId,
      this.profileLutId,
      this.name,
      this.main,
      this.details});
  factory DriftMachineViewData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DriftMachineViewData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      typeLutId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type_lut_id']),
      actorId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}actor_id']),
      modelId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}model_id']),
      profileLutId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}profile_lut_id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      main: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}main']),
      details: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}details']),
    );
  }
  factory DriftMachineViewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftMachineViewData(
      id: serializer.fromJson<int?>(json['id']),
      typeLutId: serializer.fromJson<int?>(json['typeLutId']),
      actorId: serializer.fromJson<int?>(json['actorId']),
      modelId: serializer.fromJson<int?>(json['modelId']),
      profileLutId: serializer.fromJson<int?>(json['profileLutId']),
      name: serializer.fromJson<String?>(json['name']),
      main: serializer.fromJson<String?>(json['main']),
      details: serializer.fromJson<String?>(json['details']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'typeLutId': serializer.toJson<int?>(typeLutId),
      'actorId': serializer.toJson<int?>(actorId),
      'modelId': serializer.toJson<int?>(modelId),
      'profileLutId': serializer.toJson<int?>(profileLutId),
      'name': serializer.toJson<String?>(name),
      'main': serializer.toJson<String?>(main),
      'details': serializer.toJson<String?>(details),
    };
  }

  DriftMachineViewData copyWith(
          {int? id,
          int? typeLutId,
          int? actorId,
          int? modelId,
          int? profileLutId,
          String? name,
          String? main,
          String? details}) =>
      DriftMachineViewData(
        id: id ?? this.id,
        typeLutId: typeLutId ?? this.typeLutId,
        actorId: actorId ?? this.actorId,
        modelId: modelId ?? this.modelId,
        profileLutId: profileLutId ?? this.profileLutId,
        name: name ?? this.name,
        main: main ?? this.main,
        details: details ?? this.details,
      );
  @override
  String toString() {
    return (StringBuffer('DriftMachineViewData(')
          ..write('id: $id, ')
          ..write('typeLutId: $typeLutId, ')
          ..write('actorId: $actorId, ')
          ..write('modelId: $modelId, ')
          ..write('profileLutId: $profileLutId, ')
          ..write('name: $name, ')
          ..write('main: $main, ')
          ..write('details: $details')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, typeLutId, actorId, modelId, profileLutId, name, main, details);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftMachineViewData &&
          other.id == this.id &&
          other.typeLutId == this.typeLutId &&
          other.actorId == this.actorId &&
          other.modelId == this.modelId &&
          other.profileLutId == this.profileLutId &&
          other.name == this.name &&
          other.main == this.main &&
          other.details == this.details);
}

class $DriftMachineViewView
    extends ViewInfo<$DriftMachineViewView, DriftMachineViewData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$DriftDatabaseImpl attachedDatabase;
  $DriftMachineViewView(this.attachedDatabase, [this._alias]);
  $DriftMachineTableTable get machineTable =>
      attachedDatabase.driftMachineTable.createAlias('t0');
  $DriftMachineInfoTableTable get machineInfoTable =>
      attachedDatabase.driftMachineInfoTable.createAlias('t1');
  @override
  List<GeneratedColumn> get $columns =>
      [id, typeLutId, actorId, modelId, profileLutId, name, main, details];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'drift_machine_view';
  @override
  String? get createViewStmt => null;
  @override
  $DriftMachineViewView get asDslTable => this;
  @override
  DriftMachineViewData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DriftMachineViewData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(), generatedAs: GeneratedAs(machineTable.id, false));
  late final GeneratedColumn<int?> typeLutId = GeneratedColumn<int?>(
      'type_lut_id', aliasedName, true,
      type: const IntType(),
      generatedAs: GeneratedAs(machineTable.typeLutId, false));
  late final GeneratedColumn<int?> actorId = GeneratedColumn<int?>(
      'actor_id', aliasedName, true,
      type: const IntType(),
      generatedAs: GeneratedAs(machineTable.actorId, false));
  late final GeneratedColumn<int?> modelId = GeneratedColumn<int?>(
      'model_id', aliasedName, true,
      type: const IntType(),
      generatedAs: GeneratedAs(machineTable.modelId, false));
  late final GeneratedColumn<int?> profileLutId = GeneratedColumn<int?>(
      'profile_lut_id', aliasedName, true,
      type: const IntType(),
      generatedAs: GeneratedAs(machineTable.profileLutId, false));
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(),
      generatedAs: GeneratedAs(machineTable.name, false));
  late final GeneratedColumn<String?> main = GeneratedColumn<String?>(
      'main', aliasedName, true,
      type: const StringType(),
      generatedAs: GeneratedAs(machineInfoTable.main, false));
  late final GeneratedColumn<String?> details = GeneratedColumn<String?>(
      'details', aliasedName, true,
      type: const StringType(),
      generatedAs: GeneratedAs(machineInfoTable.details, false));
  @override
  $DriftMachineViewView createAlias(String alias) {
    return $DriftMachineViewView(attachedDatabase, alias);
  }

  @override
  Query? get query => (attachedDatabase.selectOnly(machineTable,
              includeJoinedTableColumns: false)
            ..addColumns($columns))
          .join([
        leftOuterJoin(machineInfoTable,
            machineInfoTable.machineId.equalsExp(machineTable.id))
      ]);
  @override
  Set<String> get readTables => const {'machine', 'machine_info'};
}

abstract class _$DriftDatabaseImpl extends GeneratedDatabase {
  _$DriftDatabaseImpl(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $DriftMachineTableTable driftMachineTable =
      $DriftMachineTableTable(this);
  late final $DriftMachineInfoTableTable driftMachineInfoTable =
      $DriftMachineInfoTableTable(this);
  late final $DriftMachineViewView driftMachineView =
      $DriftMachineViewView(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [driftMachineTable, driftMachineInfoTable, driftMachineView];
}
