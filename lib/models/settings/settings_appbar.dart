import 'package:json_annotation/json_annotation.dart';
part 'settings_appbar.g.dart';

@JsonSerializable()
class SettingsAppBar {
  String design;
  double height;
  String? background_color;
  String? forground_color;
  double? text_size;
  bool is_bold_text;
  SettingsAppBar(
      {this.design = 'simple',
      this.height = 60.0,
      this.background_color,
      this.forground_color,
      this.text_size = 14,
      this.is_bold_text = true
      });
  factory SettingsAppBar.fromJson(Map<String, dynamic> json) =>
      _$SettingsAppBarFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsAppBarToJson(this);
}
