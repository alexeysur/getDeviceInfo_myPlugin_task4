#import "GetdeviceinfoMypluginTask4Plugin.h"
#if __has_include(<getdeviceinfo_myplugin_task4/getdeviceinfo_myplugin_task4-Swift.h>)
#import <getdeviceinfo_myplugin_task4/getdeviceinfo_myplugin_task4-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "getdeviceinfo_myplugin_task4-Swift.h"
#endif

@implementation GetdeviceinfoMypluginTask4Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGetdeviceinfoMypluginTask4Plugin registerWithRegistrar:registrar];
}
@end
