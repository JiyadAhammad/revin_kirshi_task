import 'package:dio/dio.dart';

import '../../../../core/model/api_response.dart';
import '../../../../core/network/base_remote_data_source.dart';
import '../../../../core/network/endpoints/api_endpoint.dart';
import '../../../../core/network/response_mapper.dart';
import '../model/request_model/simulation_request.dart';
import '../model/response_model/simulate_result_response.dart';

abstract interface class ISimulateResultDataSource {
  Future<ApiResponse<SimulateResultResponse>> simulateTodayResult({
    required SimulationRequestModel request,
  });
  Future<ApiResponse<SimulateResultResponse>> resetResult();
}

class SimulateResultDataSourceImpl extends BaseRemoteDataSourceImpl
    implements ISimulateResultDataSource {
  SimulateResultDataSourceImpl(this.dio);
  final Dio dio;
  // { water: 'HIGH', sunlight: 'LOW' }

  @override
  Future<ApiResponse<SimulateResultResponse>> resetResult() {
    return safeApiCall(() async {
      final Response<dynamic> res = await dio.post(ApiEndpoint.simulateResult);

      return ApiResponseMapper.fromJson(
        res.data as Map<String, dynamic>,
        (Object? data) =>
            SimulateResultResponse.fromJson(data! as Map<String, dynamic>),
      );
    });
  }

  @override
  Future<ApiResponse<SimulateResultResponse>> simulateTodayResult({
    required SimulationRequestModel request,
  }) {
    return safeApiCall(() async {
      final Response<dynamic> res = await dio.post(
        '${ApiEndpoint.simulateResult}/${request.id}/step',
        data: request.toJson(),
      );

      return ApiResponseMapper.fromJson(
        res.data as Map<String, dynamic>,
        (Object? data) =>
            SimulateResultResponse.fromJson(data! as Map<String, dynamic>),
      );
    });
  }
}
