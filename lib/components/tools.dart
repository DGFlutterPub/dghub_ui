import 'package:dghub_ui/components/global.dart';
import 'package:dghub_ui/components/responsive.dart';
import 'package:flutter/material.dart';

class Tools {
  Color hexColor(String c) {
    try {
      var hex = c.toLowerCase().replaceAll('#ff', '0xff');
      return Color(int.parse(hex, radix: 16));
    } catch (e) {
      return Colors.red;
    }
  }

  double keyboardHeight(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

  bool isDarkTheme(BuildContext context) {
    var brightness = Theme.of(context).brightness;
    print(brightness);
    return brightness == Brightness.dark;
  }

  Responsive responsive = Responsive();
}
