# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2024-07-12

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_ume` - `v1.1.5`](#flutter_ume---v115)
 - [`flutter_ume_kit_channel_monitor` - `v0.0.3+1`](#flutter_ume_kit_channel_monitor---v0031)
 - [`flutter_ume_kit_perf` - `v1.1.2`](#flutter_ume_kit_perf---v112)
 - [`flutter_ume_kit_console` - `v1.2.2`](#flutter_ume_kit_console---v122)
 - [`flutter_ume_kit_dio` - `v1.2.2`](#flutter_ume_kit_dio---v122)
 - [`flutter_ume_kit_device` - `v1.1.2`](#flutter_ume_kit_device---v112)
 - [`flutter_ume_kit_show_code` - `v1.1.2`](#flutter_ume_kit_show_code---v112)
 - [`flutter_ume_kit_ui` - `v1.2.2`](#flutter_ume_kit_ui---v122)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_ume_kit_channel_monitor` - `v0.0.3+1`
 - `flutter_ume_kit_perf` - `v1.1.2`
 - `flutter_ume_kit_console` - `v1.2.2`
 - `flutter_ume_kit_dio` - `v1.2.2`
 - `flutter_ume_kit_device` - `v1.1.2`
 - `flutter_ume_kit_show_code` - `v1.1.2`
 - `flutter_ume_kit_ui` - `v1.2.2`

---

#### `flutter_ume` - `v1.1.5`

 - **FIX**: Fix some warnings, pluginMap change to linkedhashmap.


## 2024-07-12

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`flutter_ume` - `v1.1.5`](#flutter_ume---v115)
 - [`flutter_ume_kit_perf` - `v1.1.2`](#flutter_ume_kit_perf---v112)
 - [`flutter_ume_kit_dio` - `v1.2.2`](#flutter_ume_kit_dio---v122)
 - [`flutter_ume_kit_console` - `v1.2.2`](#flutter_ume_kit_console---v122)
 - [`flutter_ume_kit_channel_monitor` - `v0.0.3+1`](#flutter_ume_kit_channel_monitor---v0031)
 - [`flutter_ume_kit_show_code` - `v1.1.2`](#flutter_ume_kit_show_code---v112)
 - [`flutter_ume_kit_ui` - `v1.2.2`](#flutter_ume_kit_ui---v122)
 - [`flutter_ume_kit_device` - `v1.1.2`](#flutter_ume_kit_device---v112)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `flutter_ume_kit_perf` - `v1.1.2`
 - `flutter_ume_kit_dio` - `v1.2.2`
 - `flutter_ume_kit_console` - `v1.2.2`
 - `flutter_ume_kit_channel_monitor` - `v0.0.3+1`
 - `flutter_ume_kit_show_code` - `v1.1.2`
 - `flutter_ume_kit_ui` - `v1.2.2`
 - `flutter_ume_kit_device` - `v1.1.2`

---

#### `flutter_ume` - `v1.1.5`

 - **FIX**: Fix some warnings, pluginMap change to linkedhashmap.

## 1.1.5

 - **FIX**: Fix some warnings, pluginMap change to linkedhashmap.

# Changelog

[简体中文](./CHANGELOG_cn.md)

## [1.1.2]

* #82 Fix flutter_logo.dart error in Flutter 3.0.5 

## [1.1.1+1]

* Update latest dependencies.

## [1.1.1]

* #66 [fix] toolbar initial position is incorrect

## [1.1.0+3]

* Fix static analyze issues.

## [1.1.0+2]

* Fix static analyze issues.

## [1.1.0]

* #76 Introduce `UMEWidget.closeActivatedPlugin()`. Issue #35
* #75 Remove overlay entry only when it's been inserted. Issue #65
* #72 [Android] Migrate the example to the v2 embedding

## [1.0.2+1]

* Dart format.

## [1.0.2]

* Fix error in code static analysis.

## [1.0.1]

* Fix error in pubspec.yaml in example

## [1.0.0]

* Normal version with adaption of Flutter 3.
* Feature: Anywhere door (Route)

## [1.0.0-dev.0]

* Adapt Flutter 3.

## [0.3.0+1]

* Fix the version error

## [0.3.0]

* Remove static function. Use the `UMEWidget`.
* Allow insert `Widget` into Widget tree, in order to access new plugin easily.
* Fix the issue of multiple instances of FloatingWidget caused by the refresh state.
* Fix the isseue that the plugin is not displayed due to the first layout exception in AOT mode

## [0.3.0]

* 移除静态方法，更换为壳 Widget
* 允许在 Widget tree 增加自定义嵌套结构组件，从而快速接入新插件
* 修复刷新状态引发的浮窗组件出现多实例的问题
* 修复在 AOT 模式下首次布局异常导致插件不展示的问题

## [0.2.1]

* Remove the extra MaterialApp Widget

## [0.2.0-dev.0]

* Adapted Null-Safety.

## [0.1.0+1]

* Add some docs comments, modify description in pubspec.yaml.

## [0.1.0]

* Open source.
