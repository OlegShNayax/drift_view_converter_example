// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_machine_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriftMachineEntity _$DriftMachineEntityFromJson(Map<String, dynamic> json) =>
    DriftMachineEntity(
      json['id'] as int,
      json['typeLutId'] as int?,
      json['actorId'] as int?,
      json['modelId'] as int?,
      json['profileLutId'] as int?,
      json['name'] as String?,
    );

Map<String, dynamic> _$DriftMachineEntityToJson(DriftMachineEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'typeLutId': instance.typeLutId,
      'actorId': instance.actorId,
      'modelId': instance.modelId,
      'profileLutId': instance.profileLutId,
      'name': instance.name,
    };
