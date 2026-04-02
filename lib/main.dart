import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';
import 'feature/main_screen/presentation/bloc/simulate_bloc.dart';
import 'feature/main_screen/presentation/screen/plant_simulator_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SimulateBloc>(create: (_) => sl<SimulateBloc>()),
      ],
      child: MaterialApp(
        title: 'Revin Krishi',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: const PlantSimulatorScreen(),
      ),
    );
  }
}
