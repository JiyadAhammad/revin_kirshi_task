import 'dart:io';

class AppConfig {
  static String baseUrl = Platform.isAndroid
      /*
      if using Emulator -> http://10.0.2.2:8000/api
      if Using Real phone -> http://YOUR_IP:8000/api
      if Using Mac browser -> http://127.0.0.1:8000/api
      */
      ? 'http://10.0.2.2:8000/api'
      : 'http://127.0.0.1:8000/api';
}
