// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simulation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimulationRequestModel _$SimulationRequestModelFromJson(
  Map<String, dynamic> json,
) => _SimulationRequestModel(
  waterEnv: json['waterEnv'] as String,
  sunlightEnv: json['sunlightEnv'] as String,
);

Map<String, dynamic> _$SimulationRequestModelToJson(
  _SimulationRequestModel instance,
) => <String, dynamic>{
  'waterEnv': instance.waterEnv,
  'sunlightEnv': instance.sunlightEnv,
};
