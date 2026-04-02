// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simulation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimulationRequestModel _$SimulationRequestModelFromJson(
  Map<String, dynamic> json,
) => _SimulationRequestModel(
  id: json['id'] as String,
  water: json['water'] as String,
  sunlight: json['sunlight'] as String,
);

Map<String, dynamic> _$SimulationRequestModelToJson(
  _SimulationRequestModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'water': instance.water,
  'sunlight': instance.sunlight,
};
