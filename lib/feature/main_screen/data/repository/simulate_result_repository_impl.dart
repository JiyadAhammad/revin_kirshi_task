import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entity/simulate_result_entity.dart';
import '../../domain/repository/i_simulate_result.dart';
import '../../domain/usecase/simulate_result_usecase.dart';
import '../data_source/remote_data_source.dart';
import '../mapper/simulate_result_mapper.dart';
import '../model/request_model/simulation_request.dart';

class SimulateResultRepositoryImpl implements ISimulateResultRepository {
  SimulateResultRepositoryImpl(this.remote);
  final ISimulateResultDataSource remote;

  @override
  Future<Either<Failure, SimulateResult>> resetResult() async {
    final result = await remote.resetResult();

    if (result.data == null) {
      return left(ServerFailure(result.message ?? 'Something went wrong'));
    }

    return right(
      SimulateResult(
        result: result.data!.toEntity(),
        message: result.message ?? '',
      ),
    );
  }

  @override
  Future<Either<Failure, SimulateResult>> simulateTodayResult({
    required SimulateResultParam request,
  }) async {
    final SimulationRequestModel requestModel = SimulationRequestModel(
      id: request.simId,
      water: request.waterEnv,
      sunlight: request.sunlightEnv,
    );

    final result = await remote.simulateTodayResult(request: requestModel);

    if (result.data == null) {
      return left(ServerFailure(result.message ?? 'Something went wrong'));
    }

    return right(
      SimulateResult(
        result: result.data!.toEntity(),
        message: result.message ?? '',
      ),
    );
  }
}
