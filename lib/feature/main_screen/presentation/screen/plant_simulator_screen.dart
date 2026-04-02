import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/simulate_bloc.dart';
import '../widget/glass_panel.dart';
import '../widget/progress_bar.dart';
import '../widget/toggle_group.dart';

class PlantSimulatorScreen extends StatefulWidget {
  const PlantSimulatorScreen({super.key});

  @override
  PlantSimulatorScreenState createState() => PlantSimulatorScreenState();
}

class PlantSimulatorScreenState extends State<PlantSimulatorScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _resetSim());
  }

  void _resetSim() {
    context.read<SimulateBloc>().add(SimulateEvent.resetResult());
  }

  String _getPlantEmoji(int health, int growth) {
    if (health <= 0) return '🥀';
    if (growth >= 100) return '🌳';
    if (growth >= 70) return '🪴';
    if (growth >= 30) return '🌿';
    return '🌱';
  }

  Color _getSkyColor(String sunlight) {
    if (sunlight == 'Low') return Colors.blueGrey.shade300;
    if (sunlight == 'High') return Colors.orangeAccent.shade100;
    return Colors.lightBlue.shade200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SimulateBloc, SimulateState>(
        listener: (context, state) {
          if (state.isError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage ?? '')));
          }
        },
        builder: (context, state) {
          if (state.simulatedResult != null) {
            final item = state.simulatedResult!;
            return AnimatedContainer(
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [_getSkyColor(item.sunlight), Colors.white],
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      _BuildHeader(
                        day: item.day,
                        health: item.health,
                        growth: item.growth,
                        onPressReset: _resetSim,
                      ),
                      Expanded(
                        child: _BuildPlantView(
                          growth: item.growth,
                          getPlantEmoji: _getPlantEmoji(
                            item.health,
                            item.growth,
                          ),
                          statusMsg: item.statusMsg,
                        ),
                      ),
                      _BuildControls(
                        health: item.health,
                        growth: item.growth,
                        selectedWaterEnv: item.water,
                        selectedSunlightEnv: item.sunlight,
                        onWaterEnvSelect: (String val) {
                          context.read<SimulateBloc>().add(
                            SimulateEvent.onWaterEnvSelect(waterEnv: val),
                          );
                        },
                        onSunLightEnvSelect: (String val) {
                          context.read<SimulateBloc>().add(
                            SimulateEvent.onSunLightEnvSelect(sunlightEnv: val),
                          );
                        },
                        onTapSimulate: () {
                          context.read<SimulateBloc>().add(
                            SimulateEvent.newResult(
                              simId: item.id,
                              waterEnv: item.water,
                              sunlightEnv: item.sunlight,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return Center(child: CircularProgressIndicator.adaptive());
        },
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
            onChanged: isOver ? null : (val) => onWaterEnvSelect(val),
          ),
          ToggleGroup(
            label: '☀️ Sunlight',
            current: selectedSunlightEnv,
            options: ['Low', 'Medium', 'High'],
            onChanged: isOver ? null : (val) => onSunLightEnvSelect(val),
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
