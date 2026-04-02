// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simulate_result_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimulateResultResponse _$SimulateResultResponseFromJson(
  Map<String, dynamic> json,
) => _SimulateResultResponse(
  id: json['id'] as String,
  day: (json['day'] as num).toInt(),
  health: (json['health'] as num).toInt(),
  growth: (json['growth'] as num).toInt(),
  water: json['water'] as String,
  sunlight: json['sunlight'] as String,
  statusMsg: json['status_msg'] as String,
);

Map<String, dynamic> _$SimulateResultResponseToJson(
  _SimulateResultResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'day': instance.day,
  'health': instance.health,
  'growth': instance.growth,
  'water': instance.water,
  'sunlight': instance.sunlight,
  'status_msg': instance.statusMsg,
};
