import Flutter
import UIKit

public class SwiftFlutterPlugin234Plugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin234", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPlugin234Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
