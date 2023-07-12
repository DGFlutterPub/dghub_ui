// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_appbar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsAppBar _$SettingsAppBarFromJson(Map<String, dynamic> json) =>
    SettingsAppBar(
      design: json['design'] as String? ?? 'simple',
      height: (json['height'] as num?)?.toDouble() ?? 60.0,
      background_color: json['background_color'] as String?,
      forground_color: json['forground_color'] as String?,
      text_size: (json['text_size'] as num?)?.toDouble() ?? 14,
      is_bold_text: json['is_bold_text'] as bool? ?? true,
    );

Map<String, dynamic> _$SettingsAppBarToJson(SettingsAppBar instance) =>
    <String, dynamic>{
      'design': instance.design,
      'height': instance.height,
      'background_color': instance.background_color,
      'forground_color': instance.forground_color,
      'text_size': instance.text_size,
      'is_bold_text': instance.is_bold_text,
    };
