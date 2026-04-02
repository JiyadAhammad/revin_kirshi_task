// ignore_for_file: public_member_api_docs, sort_constructors_first
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

  SimulateResultEntity copyWith({
    String? id,
    int? day,
    int? health,
    int? growth,
    String? water,
    String? sunlight,
    String? statusMsg,
  }) {
    return SimulateResultEntity(
      id: id ?? this.id,
      day: day ?? this.day,
      health: health ?? this.health,
      growth: growth ?? this.growth,
      water: water ?? this.water,
      sunlight: sunlight ?? this.sunlight,
      statusMsg: statusMsg ?? this.statusMsg,
    );
  }
}

class SimulateResult {
  SimulateResult({required this.result, required this.message});
  final SimulateResultEntity result;
  final String message;
}
