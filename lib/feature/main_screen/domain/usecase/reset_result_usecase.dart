import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entity/simulate_result_entity.dart';
import '../repository/i_simulate_result.dart';

class ResetResultUseCase {
  ResetResultUseCase(this.repository);
  final ISimulateResultRepository repository;

  Future<Either<Failure, SimulateResult>> call() {
    return repository.resetResult();
  }
}
