// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsTheme _$SettingsThemeFromJson(Map<String, dynamic> json) =>
    SettingsTheme(
      theme_mode: json['theme_mode'] as String? ?? 'system',
      light_background: json['light_background'] as String? ?? "#fff8f8f8",
      light_icon: json['light_icon'] as String? ?? "",
      light_primary: json['light_primary'] as String? ?? "",
      dark_background: json['dark_background'] as String? ?? "#ff1e2631",
      dark_icon: json['dark_icon'] as String? ?? "",
      dark_primary: json['dark_primary'] as String? ?? "",
    );

Map<String, dynamic> _$SettingsThemeToJson(SettingsTheme instance) =>
    <String, dynamic>{
      'theme_mode': instance.theme_mode,
      'light_primary': instance.light_primary,
      'light_background': instance.light_background,
      'light_icon': instance.light_icon,
      'dark_primary': instance.dark_primary,
      'dark_background': instance.dark_background,
      'dark_icon': instance.dark_icon,
    };
