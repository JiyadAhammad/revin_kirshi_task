import 'package:dio/dio.dart';

import '../../core/di/injection.dart';
import 'data/data_source/remote_data_source.dart';
import 'data/repository/simulate_result_repository_impl.dart';
import 'domain/repository/i_simulate_result.dart';
import 'domain/usecase/simulate_result_usecase.dart';
import 'presentation/bloc/simulate_bloc.dart';

Future<void> registerMainScreenDependencies() async {
  /// DataSource
  sl.registerLazySingleton<ISimulateResultDataSource>(
    () => SimulateResultDataSourceImpl(sl<Dio>()),
  );

  /// Repository
  sl.registerLazySingleton<ISimulateResultRepository>(
    () => SimulateResultRepositoryImpl(sl<ISimulateResultDataSource>()),
  );

  /// UseCase
  sl.registerLazySingleton<SimulateResultUseCase>(
    () => SimulateResultUseCase(sl<ISimulateResultRepository>()),
  );

  /// Bloc
  sl.registerFactory<SimulateBloc>(
    () => SimulateBloc(simulateResultUseCase: sl<SimulateResultUseCase>()),
  );
}
