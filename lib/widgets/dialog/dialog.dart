import 'package:dghub_ui/widgets/dialog/design/dialog_design_simple.dart';
import 'package:dghub_ui/widgets/dialog/dialog_theme_switcher.dart';
import 'package:flutter/material.dart';

dialog(
        {required BuildContext context,
        required Widget child,
        required double maxWidth,
        required String title}) =>
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return DialogDesignSimple(
              child: child, title: title, maxWidth: maxWidth);
        });

class Dialogs {
  simple(
          {required BuildContext context,
          double maxWidth = 300,
          required Widget child,
          required String title}) =>
      dialog(context: context, child: child, title: title, maxWidth: maxWidth);

  themeSwitcher({required BuildContext context, double maxWidth = 300}) =>
      dialogThemeSwitcher(context: context, maxWidth: maxWidth);
}
