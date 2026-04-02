import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revin_krish_task/feature/main_screen/presentation/bloc/simulate_bloc.dart';

import '../../data/model/plant_history.dart';
import '../widget/glass_panel.dart';
import '../widget/progress_bar.dart';
import '../widget/toggle_group.dart';

class PlantSimulatorScreen extends StatefulWidget {
  const PlantSimulatorScreen({super.key});

  @override
  PlantSimulatorScreenState createState() => PlantSimulatorScreenState();
}

class PlantSimulatorScreenState extends State<PlantSimulatorScreen> {
  int day = 0;
  int health = 100;
  int growth = 0;
  String water = 'Medium';
  String sunlight = 'Medium';
  String statusMsg = 'Seed planted.';
  List<PlantHistory> history = [];

  void _handleNextDay() {
    if (health <= 0 || growth >= 100) return;

    int healthDelta = 0;
    int growthDelta = 0;
    String msg = '';

    // Rules Engine logic
    if (water == 'Low' && sunlight == 'High') {
      healthDelta = -20;
      growthDelta = 2;
      msg = 'Plant is drying out! Extreme stress.';
    } else if (water == 'Medium' && sunlight == 'Medium') {
      healthDelta = 10;
      growthDelta = 15;
      msg = 'Optimal conditions! Healthy growth.';
    } else if (water == 'High' && sunlight == 'Low') {
      healthDelta = -20;
      growthDelta = 0;
      msg = 'Soil is waterlogged. Risk of root rot.';
    } else if (water == 'Low' && sunlight == 'Low') {
      healthDelta = -10;
      growthDelta = 2;
      msg = 'Lacking resources. Stunted growth.';
    } else if (water == 'High' && sunlight == 'High') {
      healthDelta = -10;
      growthDelta = 10;
      msg = 'Hot and humid! Fast growth but stressful.';
    } else if (water == 'High' && sunlight == 'Medium') {
      healthDelta = -5;
      growthDelta = 8;
      msg = 'A bit too much water.';
    } else if (water == 'Medium' && sunlight == 'High') {
      healthDelta = -5;
      growthDelta = 12;
      msg = 'Very sunny, could use a bit more water.';
    } else if (water == 'Medium' && sunlight == 'Low') {
      healthDelta = -5;
      growthDelta = 5;
      msg = 'Not enough sun today.';
    } else if (water == 'Low' && sunlight == 'Medium') {
      healthDelta = -10;
      growthDelta = 4;
      msg = 'Plant needs water urgently.';
    }

    setState(() {
      health = (health + healthDelta).clamp(0, 100);
      growth = (growth + growthDelta).clamp(0, 100);
      day++;

      if (health <= 0) {
        statusMsg = 'Plant has died. 🥀';
      } else if (growth >= 100) {
        statusMsg = 'Plant is fully grown! 🌳';
      } else {
        statusMsg = msg;
      }

      history.insert(
        0,
        PlantHistory(
          day: day,
          water: water,
          sunlight: sunlight,
          health: health,
          growth: growth,
          msg: statusMsg,
        ),
      );
    });
  }

  void _resetSim() {
    setState(() {
      day = 0;
      health = 100;
      growth = 0;
      water = 'Medium';
      sunlight = 'Medium';
      history = [];
      statusMsg = 'Simulation reset. Seed planted.';
    });
  }

  String _getPlantEmoji() {
    if (health <= 0) return '🥀';
    if (growth >= 100) return '🌳';
    if (growth >= 70) return '🪴';
    if (growth >= 30) return '🌿';
    return '🌱';
  }

  Color _getSkyColor() {
    if (sunlight == 'Low') return Colors.blueGrey.shade300;
    if (sunlight == 'High') return Colors.orangeAccent.shade100;
    return Colors.lightBlue.shade200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [_getSkyColor(), Colors.white],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                _BuildHeader(
                  day: day,
                  health: health,
                  growth: growth,
                  onPressReset: _resetSim,
                ),
                Expanded(
                  child: _BuildPlantView(
                    growth: growth,
                    getPlantEmoji: _getPlantEmoji(),
                    statusMsg: statusMsg,
                  ),
                ),
                _BuildControls(
                  health: health,
                  growth: growth,
                  selectedWaterEnv: water,
                  selectedSunlightEnv: sunlight,
                  onWaterEnvSelect: (String val) {
                    setState(() => water = val);
                  },
                  onSunLightEnvSelect: (String val) {
                    setState(() => sunlight = val);
                  },
                  onTapSimulate: () {
                    context.read<SimulateBloc>().add(
                      SimulateEvent.newResult(
                        waterEnv: water,
                        sunlightEnv: sunlight,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BuildHeader extends StatelessWidget {
  const _BuildHeader({
    required this.day,
    required this.health,
    required this.growth,
    required this.onPressReset,
  });

  final int day;
  final int health;
  final int growth;
  final VoidCallback onPressReset;

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Day $day',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: onPressReset, child: Text('Reset')),
            ],
          ),
          SizedBox(height: 10),
          StatRow(
            label: 'Health',
            value: health,
            color: health > 50
                ? Colors.green
                : (health > 20 ? Colors.orange : Colors.red),
          ),
          StatRow(label: 'Growth', value: growth, color: Colors.green),
        ],
      ),
    );
  }
}

class _BuildPlantView extends StatelessWidget {
  const _BuildPlantView({
    required this.growth,
    required this.getPlantEmoji,
    required this.statusMsg,
  });

  final int growth;
  final String getPlantEmoji;
  final String statusMsg;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedScale(
          scale: 0.8 + (growth / 100),
          duration: Duration(milliseconds: 500),
          child: Text(getPlantEmoji, style: TextStyle(fontSize: 80)),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(statusMsg, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}

class _BuildControls extends StatelessWidget {
  const _BuildControls({
    required this.health,
    required this.growth,
    required this.selectedWaterEnv,
    required this.selectedSunlightEnv,
    required this.onWaterEnvSelect,
    required this.onSunLightEnvSelect,
    required this.onTapSimulate,
  });

  final int health;
  final int growth;
  final String selectedWaterEnv;
  final String selectedSunlightEnv;
  final Function(String) onWaterEnvSelect;
  final Function(String) onSunLightEnvSelect;
  final VoidCallback onTapSimulate;

  @override
  Widget build(BuildContext context) {
    bool isOver = health <= 0 || growth >= 100;
    return GlassPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Environment', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          ToggleGroup(
            label: '💧 Water',
            current: selectedWaterEnv,
            options: ['Low', 'Medium', 'High'],
            onChanged: isOver ? null : (val) => onWaterEnvSelect,
          ),
          ToggleGroup(
            label: '☀️ Sunlight',
            current: selectedSunlightEnv,
            options: ['Low', 'Medium', 'High'],
            onChanged: isOver ? null : (val) => onSunLightEnvSelect,
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isOver ? null : onTapSimulate,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text('Simulate Next Day'),
            ),
          ),
        ],
      ),
    );
  }
}
