import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entity/simulate_result_entity.dart';
import '../repository/i_simulate_result.dart';

class SimulateResultUseCase {
  SimulateResultUseCase(this.repository);
  final ISimulateResultRepository repository;

  Future<Either<Failure, SimulateResult>> call(SimulateResultParam param) {
    return repository.simulateTodayResult(request: param);
  }
}

class SimulateResultParam {
  final String waterEnv;
  final String sunlightEnv;

  SimulateResultParam({required this.waterEnv, required this.sunlightEnv});
}
