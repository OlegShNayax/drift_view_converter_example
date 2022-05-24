import 'package:json_annotation/json_annotation.dart';

part 'machine.g.dart';

@JsonSerializable()
class Machine{

  int id;
  int? typeLutId;
  int? actorId;
  int? modelId;
  int? profileLutId;
  String? name;

  Machine(
      this.id,
      this.typeLutId,
      this.actorId,
      this.modelId,
      this.profileLutId,
      this.name);

  factory Machine.fromJson(Map<String, dynamic> json) => _$MachineFromJson(json);

  Map<String, dynamic> toJson() => _$MachineToJson(this);

}