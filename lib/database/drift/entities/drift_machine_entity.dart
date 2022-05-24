import 'package:drift/drift.dart';
import 'package:moma_core/database/drift/drift_database.dart';

class DriftMachineEntity implements Insertable<DriftMachineEntity> {

  int id;
  int? typeLutId;
  int? actorId;
  int? modelId;
  int? profileLutId;
  String? name;

  DriftMachineEntity(
      this.id,
      this.typeLutId,
      this.actorId,
      this.modelId,
      this.profileLutId,
      this.name);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return DriftMachineTableCompanion(
        id: Value(id),
        typeLutId: Value(typeLutId),
        actorId: Value(actorId),
        modelId: Value(modelId),
        profileLutId: Value(profileLutId),
        name: Value(name)
    ).toColumns(nullToAbsent);
  }
}