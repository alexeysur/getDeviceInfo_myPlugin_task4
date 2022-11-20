import Flutter
import UIKit

public class SwiftGetdeviceinfoMypluginTask4Plugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "getdeviceinfo_myplugin_task4", binaryMessenger: registrar.messenger())
    let instance = SwiftGetdeviceinfoMypluginTask4Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
