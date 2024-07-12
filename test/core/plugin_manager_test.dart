import 'dart:collection';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ume/core/pluggable.dart';
import 'package:flutter_ume/core/plugin_manager.dart';

import '../utils/mock_classes.dart';

void main() {
  group('PluggableMessageService.', () {
    test('register single plugin', () {
      final plugin = MockPluggableWithStream();
      PluginManager.instance.register(plugin);
      expect(
          PluginManager.instance.pluginsMap['MockPluggableWithStream'], isInstanceOf<Pluggable>());
    });
    test('register multiple plugin', () {
      final mockPluggableWithStream = MockPluggableWithStream();
      final mockPluggable = MockPluggable();
      PluginManager.instance.registerAll([mockPluggable, mockPluggableWithStream]);
      expect(PluginManager.instance.pluginsMap.keys.length, 2);
    });
    test('register plugin by order', () {
      PluginManager.instance
        ..register(MockPluggableWithStream())
        ..register(MockPluggable());
      expect(
          PluginManager.instance.pluginsMap.values.first, isInstanceOf<MockPluggableWithStream>());

      PluginManager.instance.pluginsMap.clear();
      PluginManager.instance
        ..register(MockPluggable())
        ..register(MockPluggableWithStream());
      expect(PluginManager.instance.pluginsMap.keys.first, MockPluggable().name);
      expect(PluginManager.instance.pluginsMap.values.first, isInstanceOf<MockPluggable>());
    });
  });
}
