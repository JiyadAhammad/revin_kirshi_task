import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulate_result_response.freezed.dart';
part 'simulate_result_response.g.dart';

@freezed
abstract class SimulateResultResponse with _$SimulateResultResponse {
  const factory SimulateResultResponse({String? result}) =
      _SimulateResultResponse;

  factory SimulateResultResponse.fromJson(Map<String, dynamic> json) =>
      _$SimulateResultResponseFromJson(json);
}
