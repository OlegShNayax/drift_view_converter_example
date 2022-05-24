// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Machine _$MachineFromJson(Map<String, dynamic> json) => Machine(
      json['id'] as int,
      json['typeLutId'] as int?,
      json['actorId'] as int?,
      json['modelId'] as int?,
      json['profileLutId'] as int?,
      json['name'] as String?,
    );

Map<String, dynamic> _$MachineToJson(Machine instance) => <String, dynamic>{
      'id': instance.id,
      'typeLutId': instance.typeLutId,
      'actorId': instance.actorId,
      'modelId': instance.modelId,
      'profileLutId': instance.profileLutId,
      'name': instance.name,
    };
