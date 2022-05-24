// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_machine_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriftMachineInfoEntity _$DriftMachineInfoEntityFromJson(
        Map<String, dynamic> json) =>
    DriftMachineInfoEntity(
      machineId: json['machineId'] as int,
      main: json['main'] == null
          ? null
          : Main.fromJson(json['main'] as Map<String, dynamic>),
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DriftMachineInfoEntityToJson(
        DriftMachineInfoEntity instance) =>
    <String, dynamic>{
      'machineId': instance.machineId,
      'main': instance.main?.toJson(),
      'details': instance.details?.toJson(),
    };

Main _$MainFromJson(Map<String, dynamic> json) => Main(
      dexTypeId: json['dexTypeId'] as num?,
      actorId: json['actorId'] as num?,
    );

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'dexTypeId': instance.dexTypeId,
      'actorId': instance.actorId,
    };

Details _$DetailsFromJson(Map<String, dynamic> json) => Details(
      machineTypeId: json['machineTypeId'] as num?,
      currency: json['currency'] as num?,
      updatedDt: json['updatedDt'] as String?,
    );

Map<String, dynamic> _$DetailsToJson(Details instance) => <String, dynamic>{
      'machineTypeId': instance.machineTypeId,
      'currency': instance.currency,
      'updatedDt': instance.updatedDt,
    };
