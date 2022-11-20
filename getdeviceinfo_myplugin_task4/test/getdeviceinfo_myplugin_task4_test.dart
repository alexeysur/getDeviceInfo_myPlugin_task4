import 'package:flutter_test/flutter_test.dart';
import 'package:getdeviceinfo_myplugin_task4/getdeviceinfo_myplugin_task4.dart';
import 'package:getdeviceinfo_myplugin_task4/getdeviceinfo_myplugin_task4_platform_interface.dart';
import 'package:getdeviceinfo_myplugin_task4/getdeviceinfo_myplugin_task4_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGetdeviceinfoMypluginTask4Platform
    with MockPlatformInterfaceMixin
    implements GetdeviceinfoMypluginTask4Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GetdeviceinfoMypluginTask4Platform initialPlatform = GetdeviceinfoMypluginTask4Platform.instance;

  test('$MethodChannelGetdeviceinfoMypluginTask4 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGetdeviceinfoMypluginTask4>());
  });

  test('getPlatformVersion', () async {
    GetdeviceinfoMypluginTask4 getdeviceinfoMypluginTask4Plugin = GetdeviceinfoMypluginTask4();
    MockGetdeviceinfoMypluginTask4Platform fakePlatform = MockGetdeviceinfoMypluginTask4Platform();
    GetdeviceinfoMypluginTask4Platform.instance = fakePlatform;

    expect(await getdeviceinfoMypluginTask4Plugin.getPlatformVersion(), '42');
  });
}
