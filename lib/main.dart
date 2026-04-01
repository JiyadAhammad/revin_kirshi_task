import 'package:flutter/material.dart';

import 'feature/main_screen/presentation/screen/plant_simulator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Revin Krishi',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const PlantSimulatorScreen(),
    );
  }
}
