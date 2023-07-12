import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'settings_theme.g.dart';

@JsonSerializable()
class SettingsTheme {
  String theme_mode;
  String light_primary;
  String light_background;
  String light_icon;
  String dark_primary;
  String dark_background;
  String dark_icon;
  SettingsTheme(
      {this.theme_mode = 'system',
      this.light_background = "#fff8f8f8",
      this.light_icon = "",
      this.light_primary = "",
      this.dark_background = "#ff1e2631",
      this.dark_icon = "",
      this.dark_primary = ""});

  factory SettingsTheme.fromJson(Map<String, dynamic> json) =>
      _$SettingsThemeFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsThemeToJson(this);
}
