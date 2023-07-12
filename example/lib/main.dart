import 'package:flutter/material.dart';
import 'package:dghub_ui/dghub_ui.dart';

import 'components/routes/routes.dart';

Future<void> main() async {
  await DGHubUI.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return DGHubUI.material(
      title: 'Flutter Demo',
      routerConfig:
          _appRouter.config(navigatorObservers: () => [HeroController()]),
    );
  }
}
