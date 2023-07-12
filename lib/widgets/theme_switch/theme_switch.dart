import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:dghub_ui/providers/theme_provider.dart';
import 'package:dghub_ui/widgets/list_item/designs/list_item_radio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, state, child) {
      return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListItemRadio(
                  label: 'System default',
                  onTap: () {
                    state.change('system');
                  },
                ),
                ListItemRadio(
                  label: 'Light',
                  onTap: () {
                    state.change('light');
                  },
                ),
                ListItemRadio(
                  label: 'Dark',
                  onTap: () {
                    state.change('dark');
                  },
                ),
              ]));
    });
  }
}
