import 'package:drift/drift.dart';
import 'package:moma_core/database/drift/tables/drift_machine_info_table.dart';
import 'package:moma_core/database/drift/tables/drift_machine_table.dart';

abstract class DriftMachineView extends View {

  DriftMachineTable get machineTable;
  DriftMachineInfoTable get machineInfoTable;

  Expression<int?> get id => machineTable.id;
  Expression<int?> get typeLutId => machineTable.typeLutId;
  Expression<int?> get actorId => machineTable.actorId;
  Expression<int?> get modelId => machineTable.modelId;
  Expression<int?> get profileLutId => machineTable.profileLutId;
  Expression<String?> get name => machineTable.name;


  @override
  Query as() => select([
        id,
        typeLutId,
        actorId,
        modelId,
        profileLutId,
        name,
        machineInfoTable.main,
        machineInfoTable.details,
      ]).from(machineTable).join([
        leftOuterJoin(machineInfoTable, machineInfoTable.machineId.equalsExp(machineTable.id)),
      ]);
}
