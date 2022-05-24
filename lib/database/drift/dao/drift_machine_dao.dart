import 'package:drift/drift.dart';
import 'package:moma_core/database/drift/drift_database.dart';
import 'package:moma_core/database/drift/entities/drift_machine_entity.dart';
import 'package:moma_core/database/drift/entities/drift_machine_info_entity.dart';
import 'package:moma_core/database/drift/tables/drift_machine_info_table.dart';
import 'package:moma_core/database/drift/tables/drift_machine_table.dart';
import 'package:moma_core/database/drift/views/drift_machine_view.dart';

part 'drift_machine_dao.g.dart';

@DriftAccessor(tables: [
  DriftMachineTable,
  DriftMachineInfoTable
], views: [
  DriftMachineView,
])
class DriftMachineDao extends DatabaseAccessor<DriftDatabaseImpl>
    with _$DriftMachineDaoMixin {
  DriftMachineDao(DriftDatabaseImpl db) : super(db);

  Future<void> insertMachine(DriftMachineEntity machine) {
    return into(driftMachineTable).insert(machine, mode: InsertMode.insertOrReplace);
  }


  Future<DriftMachineEntity?> getMachine(int machineId) {
    return (select(driftMachineTable)
          ..where((machine) => machine.id.equals(machineId)))
        .getSingleOrNull();
  }


  Future<void> insertMachineInfo(DriftMachineInfoEntity machineInfo) {
    return into(driftMachineInfoTable).insert(machineInfo, mode: InsertMode.insertOrReplace);
  }


  Future<DriftMachineInfoEntity?> getMachineInfo(int machineId) {
    return (select(driftMachineInfoTable)
          ..where((machineInfo) => machineInfo.machineId.equals(machineId)))
        .getSingleOrNull();
  }


  Future<DriftMachineViewData?> getMachineViewData(int machineId) {
    return (select(driftMachineView)
          ..where((machineView) => machineView.id.equals(machineId)))
        .getSingleOrNull();
  }
}
