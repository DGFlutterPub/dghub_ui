import 'package:dghub_ui/models/settings/settings_theme.dart';
import 'package:flutter/material.dart';

import 'settings_icon.dart';
import 'settings_ui.dart';
import 'settings_appbar.dart';
import 'package:json_annotation/json_annotation.dart';
part 'settings.g.dart';

@JsonSerializable()
class Settings {
  SettingsUI ui;
  SettingsAppBar appbar;
  SettingsTheme theme;
  SettingsIcon icon;
  Settings(
      {required this.ui,
      required this.appbar,
      required this.theme,
      required this.icon});

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsToJson(this);
}
