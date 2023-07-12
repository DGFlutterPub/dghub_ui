// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      ui: SettingsUI.fromJson(json['ui'] as Map<String, dynamic>),
      appbar: SettingsAppBar.fromJson(json['appbar'] as Map<String, dynamic>),
      theme: SettingsTheme.fromJson(json['theme'] as Map<String, dynamic>),
      icon: SettingsIcon.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'ui': instance.ui,
      'appbar': instance.appbar,
      'theme': instance.theme,
      'icon': instance.icon,
    };
