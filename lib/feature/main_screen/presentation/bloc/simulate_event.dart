part of 'simulate_bloc.dart';

@freezed
abstract class SimulateEvent with _$SimulateEvent {
  const factory SimulateEvent.resetResult() = _ResetResult;
  const factory SimulateEvent.newResult({
    required String simId,
    required String waterEnv,
    required String sunlightEnv,
  }) = _NewResult;
  const factory SimulateEvent.onWaterEnvSelect({required String waterEnv}) =
      _WaterEnvSelect;
  const factory SimulateEvent.onSunLightEnvSelect({
    required String sunlightEnv,
  }) = _SunLightEnvSelect;
}
