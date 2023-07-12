import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dghub_ui/models/settings/settings.dart';
import 'package:dghub_ui/models/settings/settings_appbar.dart';
import 'package:dghub_ui/models/settings/settings_icon.dart';
import 'package:dghub_ui/models/settings/settings_ui.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;

import '../components/global.dart';
import '../models/settings/settings_theme.dart';

class SettingsProvider extends ChangeNotifier {
  Settings settings = Settings(
      appbar: SettingsAppBar(),
      theme: SettingsTheme(),
      ui: SettingsUI(),
      icon: SettingsIcon());

  Settings? getStorageSettings() {
    return storage.read('ui') == null
        ? null
        : Settings.fromJson(jsonDecode(storage.read('ui')));
  }
}
