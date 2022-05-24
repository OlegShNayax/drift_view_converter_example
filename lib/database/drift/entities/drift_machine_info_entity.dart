import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:moma_core/database/drift/drift_database.dart';

part 'drift_machine_info_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class DriftMachineInfoEntity implements Insertable<DriftMachineInfoEntity> {
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

  factory DriftMachineInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$DriftMachineInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DriftMachineInfoEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Main {
  num? dexTypeId;
  num? actorId;

  Main({this.dexTypeId, this.actorId});

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Details {
  num? machineTypeId;
  num? currency;
  String? updatedDt;

  Details({this.machineTypeId, this.currency, this.updatedDt});

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsToJson(this);
}
