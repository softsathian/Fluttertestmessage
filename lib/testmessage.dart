
import 'dart:async';

import 'package:flutter/services.dart';

class Testmessage {
  static const MethodChannel _channel =
      const MethodChannel('testmessage');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
