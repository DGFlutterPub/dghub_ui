import 'package:dghub_ui/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:dghub_ui/widgets/list_item/designs/list_item_icon.dart';
import 'package:dghub_ui/widgets/theme_switch/theme_switch.dart';
import 'package:flutter/material.dart';

bottomSheetThemeSwitcher(BuildContext context) =>
    bottomSheet(context: context, title: 'Themes', child: ThemeSwitch());
