part of 'simulate_bloc.dart';

@freezed
abstract class SimulateEvent with _$SimulateEvent {
  const factory SimulateEvent.newResult({
    required String waterEnv,
    required String sunlightEnv,
  }) = _NewResult;
}
