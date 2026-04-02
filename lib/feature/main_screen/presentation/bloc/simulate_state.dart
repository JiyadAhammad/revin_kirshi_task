part of 'simulate_bloc.dart';

@freezed
abstract class SimulateState with _$SimulateState {
  const factory SimulateState({
    SimulateResultEntity? simulatedResult,
    @Default(false) bool isFetching,
    @Default(false) bool isError,
    String? errorMessage,
    String? successMessage,
  }) = _SimulateState;
}
