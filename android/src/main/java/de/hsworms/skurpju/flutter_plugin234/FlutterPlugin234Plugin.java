package de.hsworms.skurpju.flutter_plugin234;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlutterPlugin234Plugin */
public class FlutterPlugin234Plugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "flutter_plugin234");
    channel.setMethodCallHandler(new FlutterPlugin234Plugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getPlatformVersion")) {
      result.success("Android" + android.os.Build.VERSION.RELEASE);
    } else {
      result.notImplemented();
    }
  }
}
