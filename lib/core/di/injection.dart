import 'package:get_it/get_it.dart';

import '../../feature/main_screen/main_screen_injuction.dart';
import '../network/api_client.dart';

final GetIt sl = GetIt.instance;

Future<void> setupInjector() async {
  await _registerCore();
  await registerMainScreenDependencies();
}

Future<void> _registerCore() async {
  /// Api Client
  sl.registerLazySingleton<ApiClient>(() => ApiClient());

  /// Dio instance
  sl.registerLazySingleton(() => sl<ApiClient>().dio);
}
