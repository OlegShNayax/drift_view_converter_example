import 'package:drift/drift.dart';
import 'package:moma_core/database/drift/drift_database.dart';
import 'package:moma_core/models/machineinfo/machine_info.dart';

class DriftMachineInfoEntity implements Insertable<DriftMachineInfoEntity>{
  final int machineId;
  final Main? main;
  final Details? details;

  DriftMachineInfoEntity({required this.machineId, this.main, this.details});

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return DriftMachineInfoTableCompanion(
            machineId: Value(machineId),
            main: Value(main),
            details: Value(details))
        .toColumns(nullToAbsent);
  }
}