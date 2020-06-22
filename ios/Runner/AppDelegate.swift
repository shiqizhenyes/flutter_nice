import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    NSLog("zack", "didFinishLaunchingWithOptions")
    let channel = "me.nice.flutter/battery"
          let controller = window.rootViewController as! FlutterViewController
          let methodChannel = FlutterMethodChannel.init(name: channel, binaryMessenger: controller.binaryMessenger)

          methodChannel.setMethodCallHandler { (call, result) in
              let batteryLevel = self.getBatteryLevel()
              if(call.method == "getBatteryLevel") {
                  if (batteryLevel == -1) {
                      result(FlutterError.init(code: "UNAVAILABLE", message: "Battery level not unavailable", details: "Battery level not unavailable"))
                  } else {
                      result(batteryLevel)
                  }
                  result(batteryLevel)
              } else {
                  result(FlutterMethodNotImplemented)
              }
          }
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
//
//    override func applicationDidFinishLaunching(_ application: UIApplication) {
//
//    }
    
    
    private func getBatteryLevel() -> Int{
      let device = UIDevice.current;
      device.isBatteryMonitoringEnabled = true;
        if (device.batteryState == UIDevice.BatteryState.unknown) {
            return Int(-1);
      } else {
            return Int(device.batteryLevel * 100)
      }
    }
    
}
