import 'package:drift/drift.dart';
import 'package:moma_core/database/drift/entities/drift_machine_info_entity.dart';
import 'package:moma_core/database/drift/type_converter/drift_details_converter.dart';
import 'package:moma_core/database/drift/type_converter/drift_main_converter.dart';

@UseRowClass(DriftMachineInfoEntity)
class DriftMachineInfoTable extends Table {
  @override
  String get tableName => 'machine_info';

  IntColumn get machineId => integer().named("machineId")();
  TextColumn get main => text().named("main").map(const DriftMainConverter()).nullable()();
  TextColumn get details => text().named("details").map(const DriftDetailsConverter()).nullable()();

  @override
  Set<Column>? get primaryKey => {machineId};
}
