import 'package:json_annotation/json_annotation.dart';

part 'settings_icon.g.dart';

@JsonSerializable()
class SettingsIcon {
  bool isOutline;
  SettingsIcon({this.isOutline = true});
  factory SettingsIcon.fromJson(Map<String, dynamic> json) =>
      _$SettingsIconFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsIconToJson(this);
}
