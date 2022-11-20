import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'getdeviceinfo_myplugin_task4_method_channel.dart';

abstract class GetdeviceinfoMypluginTask4Platform extends PlatformInterface {
  /// Constructs a GetdeviceinfoMypluginTask4Platform.
  GetdeviceinfoMypluginTask4Platform() : super(token: _token);

  static final Object _token = Object();

  static GetdeviceinfoMypluginTask4Platform _instance = MethodChannelGetdeviceinfoMypluginTask4();

  /// The default instance of [GetdeviceinfoMypluginTask4Platform] to use.
  ///
  /// Defaults to [MethodChannelGetdeviceinfoMypluginTask4].
  static GetdeviceinfoMypluginTask4Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GetdeviceinfoMypluginTask4Platform] when
  /// they register themselves.
  static set instance(GetdeviceinfoMypluginTask4Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
