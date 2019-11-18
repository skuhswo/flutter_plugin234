import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_plugin234/flutter_plugin234.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_plugin234');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterPlugin234.platformVersion, '42');
  });
}
