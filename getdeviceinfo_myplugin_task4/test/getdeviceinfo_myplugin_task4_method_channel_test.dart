import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getdeviceinfo_myplugin_task4/getdeviceinfo_myplugin_task4_method_channel.dart';

void main() {
  MethodChannelGetdeviceinfoMypluginTask4 platform = MethodChannelGetdeviceinfoMypluginTask4();
  const MethodChannel channel = MethodChannel('getdeviceinfo_myplugin_task4');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
