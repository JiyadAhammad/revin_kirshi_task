class SimulateResultEntity {
  final String id;
  final int day;
  final int health;
  final int growth;
  final String water;
  final String sunlight;
  final String statusMsg;

  SimulateResultEntity({
    required this.id,
    required this.day,
    required this.health,
    required this.growth,
    required this.water,
    required this.sunlight,
    required this.statusMsg,
  });
}

class SimulateResult {
  SimulateResult({required this.result, required this.message});
  final SimulateResultEntity result;
  final String message;
}
