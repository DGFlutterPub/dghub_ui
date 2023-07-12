import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/tools.dart';
import '../../../models/settings/settings.dart';
import '../../../providers/settings_provider.dart';

class AppBarDesignSimple extends StatelessWidget {
  final String? title;
  final Function()? backButton;
  const AppBarDesignSimple({this.backButton, this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (settingContext, state, settingChild) {
        return Container(
            color: state.settings.appbar.background_color == null
                ? null
                : Tools().hexColor(state.settings.appbar.background_color!),
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                if (backButton != null)
                  IconButton(
                      onPressed: backButton,
                      icon: Icon(state.settings.icon.isOutline
                          ? EvaIcons.activityOutline
                          : EvaIcons.arrowBack)),
                if (title != null)
                  Text(title!,
                      style: TextStyle(
                          fontWeight: !state.settings.appbar.is_bold_text
                              ? null
                              : FontWeight.bold,
                          fontSize: state.settings.appbar.text_size))
              ],
            ));
      },
    );
  }
}
