# 🌱 Plant Simulation API + Flutter App

This project contains:

* ✅ FastAPI backend (Simulation Engine)
* ✅ Flutter frontend (Mobile App)

---

# 🚀 Backend Setup (FastAPI)

## 📦 Install dependencies

```bash
pip install -r requirements.txt
```

---

## ▶️ Run the API

```bash
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
```

### 🔍 Access API

* Swagger Docs:
  http://127.0.0.1:8000/docs

---

# 📱 Flutter App Setup

## ▶️ Run App

```bash
flutter pub get
flutter run
```

---

## 📦 Build APK

```bash
flutter build apk
```

👉 Output:

```
build/app/outputs/flutter-apk/app-release.apk
```

---

# 🌐 API Base URL Configuration

Use platform-based configuration:

```dart
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
```

---

# 📌 Environment Setup Guide

## 🟢 Android Emulator

```
http://10.0.2.2:8000/api
```

---

## 🟢 Real Android Device (Same WiFi)

1. Get your system IP:

```bash
ifconfig | grep inet
```

2. Use:

```
http://YOUR_IP:8000/api
```

---

## 🟢 macOS / Browser

```
http://127.0.0.1:8000/api
```

---

# ⚠️ Important Notes

* Backend must run with:

  ```
  --host 0.0.0.0
  ```
* Mobile & system must be on same network
* Enable internet permission in Android

```xml
<uses-permission android:name="android.permission.INTERNET"/>
```

---

# 🧠 Features

* 🌱 Plant growth simulation
* 📊 Health & growth tracking
* 🔄 Step-based updates
* ⚡ Real-time API interaction

---
