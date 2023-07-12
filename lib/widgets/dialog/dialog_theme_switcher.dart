import 'package:dghub_ui/widgets/dialog/dialog.dart';
import 'package:dghub_ui/widgets/theme_switch/theme_switch.dart';
import 'package:flutter/material.dart';

dialogThemeSwitcher(
        {required BuildContext context, required double maxWidth}) =>
    dialog(
        context: context,
        title: 'Themes',
        child: ThemeSwitch(),
        maxWidth: maxWidth);
