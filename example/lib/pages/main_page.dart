import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:dghub_ui/dghub_ui.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    //return DGHubUI.pages.main(appBarTitle: 'Main Page');

    return Scaffold(
        body: ElevatedButton(
            onPressed: () {
              if (DGHubUI.tools.responsive.isMobile(context)) {
                DGHubUI.widgets.bottomSheet.themeSwitcher(context);
              } else {
                DGHubUI.widgets.dialogs.themeSwitcher(context: context);
              }
            },
            child: Text('click')));
  }
}
