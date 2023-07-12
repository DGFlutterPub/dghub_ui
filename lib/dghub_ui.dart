library dghub_ui;

import 'dart:convert';

import 'package:dghub_ui/components/tools.dart';
import 'package:dghub_ui/models/settings/settings.dart';
import 'package:dghub_ui/pages/pages.dart';
import 'package:dghub_ui/widgets/appbar/dg_appbar.dart';
import 'package:dghub_ui/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:dghub_ui/widgets/material/dg_material_app.dart';
import 'package:dghub_ui/widgets/theme_switch/theme_switch.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'pages/main/main_page.dart';
import 'widgets/widgets.dart';

class DGHubUI {
  static init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await GetStorage.init();
  }

  static Widgets widgets = Widgets();
  static Pages pages = Pages();
  static Tools tools = Tools();
  static EvaIcons icons = EvaIcons();

  static Widget material(
      {GlobalKey<NavigatorState>? navigatorKey,
      GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
      Map<String, WidgetBuilder>? routes,
      String? initialRoute,
      RouteFactory? onGenerateRoute,
      InitialRouteListFactory? onGenerateInitialRoutes,
      RouteFactory? onUnknownRoute,
      List<NavigatorObserver>? navigatorObservers,
      RouteInformationProvider? routeInformationProvider,
      RouteInformationParser<Object>? routeInformationParser,
      RouterDelegate<Object>? routerDelegate,
      BackButtonDispatcher? backButtonDispatcher,
      RouterConfig<Object>? routerConfig,
      String title = '',
      GenerateAppTitle? onGenerateTitle,
      ThemeData? highContrastTheme,
      ThemeData? highContrastDarkTheme,
      Color? color,
      Locale? locale,
      Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates,
      LocaleListResolutionCallback? localeListResolutionCallback,
      LocaleResolutionCallback? localeResolutionCallback,
      bool showPerformanceOverlay = false,
      bool checkerboardRasterCacheImages = false,
      bool checkerboardOffscreenLayers = false,
      bool showSemanticsDebugger = false,
      bool debugShowCheckedModeBanner = true,
      Map<ShortcutActivator, Intent>? shortcuts,
      Map<Type, Action<Intent>>? actions,
      String? restorationScopeId,
      ScrollBehavior? scrollBehavior,
      bool debugShowMaterialGrid = false,
      Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')]}) {
    return DGMaterialApp(
        routeInformationProvider: routeInformationProvider,
        routeInformationParser: routeInformationParser,
        routerDelegate: routerDelegate,
        routerConfig: routerConfig,
        backButtonDispatcher: backButtonDispatcher,
        title: title,
        color: color,
        onGenerateTitle: onGenerateTitle,
        localeResolutionCallback: localeResolutionCallback,
        localeListResolutionCallback: localeListResolutionCallback,
        showPerformanceOverlay: showPerformanceOverlay,
        checkerboardRasterCacheImages: checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: checkerboardOffscreenLayers,
        showSemanticsDebugger: showSemanticsDebugger,
        debugShowCheckedModeBanner: debugShowCheckedModeBanner,
        shortcuts: shortcuts,
        actions: actions,
        restorationScopeId: restorationScopeId);
  }
}

enum DGHubPageDesign { simple }

enum DGHubAppBarDesign { simple }

enum DGHubBottomBarDesign { simple }

enum DGHubSlideBarDesign { simple }
