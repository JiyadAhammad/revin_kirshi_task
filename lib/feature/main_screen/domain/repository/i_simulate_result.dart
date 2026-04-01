import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entity/simulate_result_entity.dart';
import '../usecase/simulate_result_usecase.dart';

abstract interface class ISimulateResultRepository {
  Future<Either<Failure, SimulateResult>> simulateTodayResult({
    required SimulateResultParam request,
  });
}
