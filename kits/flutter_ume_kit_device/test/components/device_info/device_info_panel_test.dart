import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ume/core/ui/global.dart';
import 'package:flutter_ume_kit_device/components/device_info/device_info_panel.dart';
import '../../mock_classes.dart';

void main() {
  group('DeviceInfoPanel', () {
    test('Pluggable', () {
      final pluggable = DeviceInfoPanel();
      final widget = pluggable.buildWidget(MockContext());
      final name = pluggable.name;
      final onTrigger = pluggable.onTrigger;
      onTrigger();
      final imageProvider = pluggable.iconImageProvider;

      expect(widget, isA<Widget>());
      expect(name, isNotEmpty);
      expect(onTrigger, isA<Function>());
      expect(imageProvider, isNotNull);
    });
    setUp(() {
      MethodChannel('dev.fluttercommunity.plus/device_info')
          .setMockMethodCallHandler((call) {
        if (call.method == 'getDeviceInfo') {
          return Future.value({
            'name': 'data.name',
            'systemName': 'data.systemName',
            'systemVersion': 'data.systemVersion',
            'model': 'data.model',
            'localizedModel': 'data.localizedModel',
            'identifierForVendor': 'data.identifierForVendor',
            'isPhysicalDevice': 'data.isPhysicalDevice',
            'utsname': {
              'sysname': 'data.utsname.sysname',
              'nodename': 'data.utsname.nodename',
              'release': 'data.utsname.release',
              'version': 'data.utsname.version',
              'machine': 'data.utsname.machine',
            },
            'version': {
              'securityPatch': 'build.version.securityPatch',
              'sdkInt': 33,
              'release': 'build.version.release',
              'previewSdkInt': 0,
              'incremental': 'build.version.incremental',
              'codename': 'build.version.codename',
              'baseOS': 'build.version.baseOS',
            },
            'board': 'build.board',
            'bootloader': 'build.bootloader',
            'brand': 'build.brand',
            'device': 'build.device',
            'display': 'build.display',
            'fingerprint': 'build.fingerprint',
            'hardware': 'build.hardware',
            'host': 'build.host',
            'id': 'build.id',
            'manufacturer': 'build.manufacturer',
            'model': 'build.model',
            'product': 'build.product',
            'supported32BitAbis': ['build.supported32BitAbis'],
            'supported64BitAbis': ['build.supported64BitAbis'],
            'supportedAbis': ['build.supportedAbis'],
            'tags': 'build.tags',
            'type': 'build.type',
            'isPhysicalDevice': false,
            'systemFeatures': <String>[],
            'serialNumber': 'build.serialNumber',
            'isLowRamDevice': false,
          });
        } else {
          return Future.value({});
        }
      });
    });

    tearDown(() {
      MethodChannel('dev.fluttercommunity.plus/device_info')
          .setMockMethodCallHandler(null);
    });
    testWidgets('DeviceInfoPanel pump widget, Android', (tester) async {
      WidgetsFlutterBinding.ensureInitialized();

      final deviceInfoPage = DeviceInfoPanel(platform: MockAndroidPlatform());

      await tester.pumpWidget(MaterialApp(
          key: rootKey,
          home: Scaffold(
            body: deviceInfoPage,
          )));
      await tester.pump(Duration(seconds: 1));
      await tester.pumpAndSettle();
      expect(deviceInfoPage, isNotNull);
    });
    testWidgets('DeviceInfoPanel pump widget, iOS', (tester) async {
      WidgetsFlutterBinding.ensureInitialized();

      final deviceInfoPage = DeviceInfoPanel(platform: MockIOSPlatform());

      await tester.pumpWidget(MaterialApp(
          key: rootKey,
          home: Scaffold(
            body: deviceInfoPage,
          )));
      await tester.pump(Duration(seconds: 1));
      await tester.pumpAndSettle();
      expect(deviceInfoPage, isNotNull);
    });
  });
}
