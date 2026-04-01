import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulation_request.freezed.dart';
part 'simulation_request.g.dart';

@freezed
abstract class SimulationRequestModel with _$SimulationRequestModel {
  const factory SimulationRequestModel({
    required String waterEnv,
    required String sunlightEnv,
  }) = _SimulationRequestModel;

  factory SimulationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SimulationRequestModelFromJson(json);
}
