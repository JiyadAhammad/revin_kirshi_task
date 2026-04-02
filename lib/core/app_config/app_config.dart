import 'dart:io';

class AppConfig {
  static String baseUrl = Platform.isAndroid
      ? 'http://10.141.38.15:8000/api'
      : 'http://127.0.0.1:8000/api';
}
