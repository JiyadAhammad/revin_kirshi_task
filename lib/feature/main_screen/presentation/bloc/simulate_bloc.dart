import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revin_krish_task/core/logger/app_logger.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entity/simulate_result_entity.dart';
import '../../domain/usecase/reset_result_usecase.dart';
import '../../domain/usecase/simulate_result_usecase.dart';

part 'simulate_event.dart';
part 'simulate_state.dart';
part 'simulate_bloc.freezed.dart';

class SimulateBloc extends Bloc<SimulateEvent, SimulateState> {
  SimulateBloc({
    required SimulateResultUseCase simulateResultUseCase,
    required ResetResultUseCase resetResultUseCase,
  }) : _resetResultUseCase = resetResultUseCase,
       _simulateResultUseCase = simulateResultUseCase,
       super(SimulateState()) {
    on<_ResetResult>(_onResetResult);
    on<_NewResult>(_onSimulateNewResult);
    on<_WaterEnvSelect>(_onWaterEnvSelect);
    on<_SunLightEnvSelect>(_onSunLightEnvSelect);
  }

  final SimulateResultUseCase _simulateResultUseCase;
  final ResetResultUseCase _resetResultUseCase;

  Future<void> _onResetResult(
    _ResetResult event,
    Emitter<SimulateState> emit,
  ) async {
    try {
      emit(state.copyWith(isFetching: true, isError: false));

      final res = await _resetResultUseCase.call();

      res.fold(
        (Failure error) {
          AppLogger.debug('${error.message}');
          emit(
            state.copyWith(
              isFetching: false,
              isError: true,
              errorMessage: error.message,
            ),
          );
        },
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

  Future<void> _onSimulateNewResult(
    _NewResult event,
    Emitter<SimulateState> emit,
  ) async {
    try {
      emit(state.copyWith(isFetching: true, isError: false));

      final res = await _simulateResultUseCase(
        SimulateResultParam(
          simId: event.simId,
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

  void _onWaterEnvSelect(_WaterEnvSelect event, Emitter<SimulateState> emit) {
    if (state.simulatedResult == null) {
      return;
    }
    SimulateResultEntity updatedSimulation = state.simulatedResult!;

    updatedSimulation = updatedSimulation.copyWith(water: event.waterEnv);
    emit(state.copyWith(simulatedResult: updatedSimulation));
  }

  void _onSunLightEnvSelect(
    _SunLightEnvSelect event,
    Emitter<SimulateState> emit,
  ) {
    if (state.simulatedResult == null) {
      return;
    }
    SimulateResultEntity updatedSimulation = state.simulatedResult!;

    updatedSimulation = updatedSimulation.copyWith(sunlight: event.sunlightEnv);
    emit(state.copyWith(simulatedResult: updatedSimulation));
  }
}
