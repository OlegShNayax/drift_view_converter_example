import 'package:drift/drift.dart';
import 'package:moma_core/database/drift/entities/drift_machine_entity.dart';

@UseRowClass(DriftMachineEntity)
class DriftMachineTable extends Table {
  @override
  String get tableName => 'machine';

  IntColumn get id => integer()();
  IntColumn get typeLutId => integer().named("typeLutId").nullable()();
  IntColumn get actorId => integer().named("actorId").nullable()();
  IntColumn get modelId => integer().named("modelId").nullable()();
  IntColumn get profileLutId => integer().named("profileLutId").nullable()();
  TextColumn get name => text().named("name").nullable()();


  @override
  Set<Column>? get primaryKey => {id};
}
