import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulate_result_response.freezed.dart';
part 'simulate_result_response.g.dart';

@freezed
abstract class SimulateResultResponse with _$SimulateResultResponse {
  const factory SimulateResultResponse({
    required String id,
    required int day,
    required int health,
    required int growth,
    required String water,
    required String sunlight,
    @JsonKey(name: 'status_msg') required String statusMsg,
  }) = _SimulateResultResponse;

  factory SimulateResultResponse.fromJson(Map<String, dynamic> json) =>
      _$SimulateResultResponseFromJson(json);
}
