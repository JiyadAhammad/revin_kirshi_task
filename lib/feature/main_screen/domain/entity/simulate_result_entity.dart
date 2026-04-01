class SimulateResultEntity {
  final String result;

  SimulateResultEntity({required this.result});
}

class SimulateResult {
  SimulateResult({required this.result, required this.message});
  final SimulateResultEntity result;
  final String message;
}
