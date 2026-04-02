import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entity/simulate_result_entity.dart';
import '../../domain/usecase/simulate_result_usecase.dart';

part 'simulate_event.dart';
part 'simulate_state.dart';
part 'simulate_bloc.freezed.dart';

class SimulateBloc extends Bloc<SimulateEvent, SimulateState> {
  SimulateBloc({required SimulateResultUseCase simulateResultUseCase})
    : _simulateResultUseCase = simulateResultUseCase,
      super(SimulateState()) {
    on<_NewResult>(_onSimulateNewResult);
  }

  final SimulateResultUseCase _simulateResultUseCase;

  Future<void> _onSimulateNewResult(
    _NewResult event,
    Emitter<SimulateState> emit,
  ) async {
    try {
      emit(state.copyWith(isFetching: true, isError: false));

      final res = await _simulateResultUseCase(
        SimulateResultParam(
          waterEnv: event.waterEnv,
          sunlightEnv: event.sunlightEnv,
        ),
      );

      res.fold(
        (Failure error) => emit(
          state.copyWith(
            isFetching: false,
            isError: true,
            errorMessage: error.message,
          ),
        ),
        (SimulateResult result) => emit(
          state.copyWith(
            isFetching: false,
            simulatedResult: result.result,
            successMessage: result.message,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isFetching: false,
          isError: true,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
