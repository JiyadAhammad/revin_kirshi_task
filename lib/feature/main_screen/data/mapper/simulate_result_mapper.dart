import '../../domain/entity/simulate_result_entity.dart';
import '../model/response_model/simulate_result_response.dart';

extension SimulateResultMapper on SimulateResultResponse {
  SimulateResultEntity toEntity() {
    return SimulateResultEntity(result: result ?? '');
  }
}
