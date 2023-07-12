import 'package:json_annotation/json_annotation.dart';
part 'settings_ui.g.dart';

@JsonSerializable()
class SettingsUI {
  String design;
  SettingsUI({this.design = 'main'});

  factory SettingsUI.fromJson(Map<String, dynamic> json) =>
      _$SettingsUIFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsUIToJson(this);
}
