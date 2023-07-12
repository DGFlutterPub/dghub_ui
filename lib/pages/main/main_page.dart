import 'package:dghub_ui/providers/settings_provider.dart';
import 'package:dghub_ui/widgets/appbar/dg_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  final String? appBarTitle;
  const MainPage({this.appBarTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(builder: (context, state, child) {
      return SafeArea(
          child: Scaffold(
        appBar:
            DGAppBar(title: appBarTitle, height: state.settings.appbar.height),
        body: SafeArea(child: Container()),
      ));
    });
  }
}
