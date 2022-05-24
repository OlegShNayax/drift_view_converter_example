import 'package:drift/drift.dart';
import 'package:moma_core/database/drift/drift_database.dart';
import 'package:moma_core/database/drift/entities/drift_machine_entity.dart';
import 'package:moma_core/database/drift/entities/drift_machine_info_entity.dart';
import 'package:moma_core/database/drift/tables/drift_machine_info_table.dart';
import 'package:moma_core/database/drift/tables/drift_machine_table.dart';
import 'package:moma_core/database/drift/views/drift_machine_view.dart';
import 'package:moma_core/models/machine/machine.dart';
import 'package:moma_core/models/machineinfo/machine_info.dart';

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

  Future<void> insertMachines(List<Machine> machines) {
    return batch((batch) {
      batch.insertAll(
          driftMachineTable,
          machines.map((machine) => DriftMachineEntity.fromMachine(machine)).toList(),
          mode: InsertMode.insertOrReplace);
    });
  }


  Future<void> insertMachineInfo(MachineInfo machineInfo) {
    return into(driftMachineInfoTable).insert(
        DriftMachineInfoEntity.fromMachineInfo(machineInfo),
        mode: InsertMode.insertOrReplace);
  }

  Future<MachineInfo?> getMachineInfo(int machineId) {
    return (select(driftMachineInfoTable)
          ..where((machineInfo) => machineInfo.machineId.equals(machineId)))
        .getSingleOrNull()
        .then((result) => result?.toMachineInfo());
  }


  Future<List<DriftMachineViewData>> getAllMachineViews() {
    return select(driftMachineView).get();
  }
}
