
import 'package:flutter/services.dart';

import 'getdeviceinfo_myplugin_task4_platform_interface.dart';

class GetdeviceinfoMypluginTask4 {

  static const MethodChannel _channel = MethodChannel('ua.sur/deviceinfo');

  static Future<int> getRamUsageMb() async {
    try {
      final int result = await _channel.invokeMethod('getRamUsage');
      final resultMb = (result / 1024 / 1024).round();
      return resultMb;
    } on PlatformException {
      return 0;
    }
  }

  Future<String?> getPlatformVersion() {
    return GetdeviceinfoMypluginTask4Platform.instance.getPlatformVersion();
  }
}
