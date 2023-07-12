import 'package:dghub_ui/components/global.dart';
import 'package:dghub_ui/providers/settings_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../components/providers.dart';
import '../../components/tools.dart';
import '../../providers/theme_provider.dart';

class DGMaterialApp extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  final Map<String, WidgetBuilder>? routes;
  final String? initialRoute;
  final RouteFactory? onGenerateRoute;
  final InitialRouteListFactory? onGenerateInitialRoutes;
  final RouteFactory? onUnknownRoute;
  final List<NavigatorObserver>? navigatorObservers;
  final RouteInformationProvider? routeInformationProvider;
  final RouteInformationParser<Object>? routeInformationParser;
  final RouterDelegate<Object>? routerDelegate;
  final BackButtonDispatcher? backButtonDispatcher;
  final RouterConfig<Object>? routerConfig;
  final TransitionBuilder? builder;
  final String title;
  final GenerateAppTitle? onGenerateTitle;
  final ThemeData? highContrastTheme;
  final ThemeData? highContrastDarkTheme;
  final Color? color;
  final LocaleListResolutionCallback? localeListResolutionCallback;
  final LocaleResolutionCallback? localeResolutionCallback;
  final bool showPerformanceOverlay;
  final bool checkerboardRasterCacheImages;
  final bool checkerboardOffscreenLayers;
  final bool showSemanticsDebugger;
  final bool debugShowCheckedModeBanner;
  final Map<ShortcutActivator, Intent>? shortcuts;
  final Map<Type, Action<Intent>>? actions;
  final String? restorationScopeId;
  final ScrollBehavior? scrollBehavior;
  final bool debugShowMaterialGrid;

  const DGMaterialApp(
      {super.key,
      this.scaffoldMessengerKey,
      this.routeInformationProvider,
      this.routeInformationParser,
      this.routerDelegate,
      this.routerConfig,
      this.backButtonDispatcher,
      this.builder,
      this.title = '',
      this.onGenerateTitle,
      this.color,
      this.highContrastTheme,
      this.highContrastDarkTheme,
      this.localeListResolutionCallback,
      this.localeResolutionCallback,
      this.debugShowMaterialGrid = false,
      this.showPerformanceOverlay = false,
      this.checkerboardRasterCacheImages = false,
      this.checkerboardOffscreenLayers = false,
      this.showSemanticsDebugger = false,
      this.debugShowCheckedModeBanner = true,
      this.shortcuts,
      this.actions,
      this.restorationScopeId,
      this.scrollBehavior,
      this.navigatorObservers,
      this.navigatorKey,
      this.onGenerateRoute,
      this.onGenerateInitialRoutes,
      this.onUnknownRoute,
      this.routes,
      this.initialRoute});

  @override
  Widget build(BuildContext context) {
    globalContext = context;
    return MultiProvider(
        providers: Providers.get(),
        child: Consumer<SettingsProvider>(
            builder: (settingContext, settingsState, settingChild) {
          return Consumer<ThemeProvider>(
              builder: (themeContext, themeState, themeChild) {
            return EasyLocalization(
              assetLoader: HttpAssetLoader(),
              supportedLocales: [Locale('en', 'US')],
              path:
                  'assets/translations', // <-- change the path of the translation files
              fallbackLocale: Locale('en', 'US'),
              child: MaterialApp.router(
                //--Localizaton
                //  localizationsDelegates: context.localizationDelegates,
                // supportedLocales: context.supportedLocales,
                //  locale: context.locale,
                //--Theme
                themeMode: themeState.getThemeMode ??
                    themeState
                        .themeMode(settingsState.settings.theme.theme_mode),
                theme: ThemeData(
                  brightness: Brightness.light,
                  // colorScheme: ColorScheme.fromSwatch().copyWith(
                  //    secondary: Colors.red, brightness: Brightness.light),
                  appBarTheme: AppBarTheme(
                    iconTheme: IconThemeData(color: Colors.grey),
                    elevation: 0,
                    backgroundColor: Tools().hexColor(
                        settingsState.settings.theme.light_background),
                    // foregroundColor: Colors.white //here you can give the text color
                  ),
                  iconTheme: const IconThemeData(color: Colors.grey),
                  unselectedWidgetColor: Colors.grey,
                  toggleableActiveColor: Tools()
                      .hexColor(settingsState.settings.theme.light_primary),
                  canvasColor: const Color(0xffffffff),
                  primaryColorLight: Colors.black,
                  indicatorColor: const Color(0xfff8f8f8),
                  cardColor: const Color(0xffffffff),
                  primaryColor: Tools()
                      .hexColor(settingsState.settings.theme.light_background),
                  backgroundColor: const Color(0xfff4f4f4),
                  scaffoldBackgroundColor: const Color(0xfff8f8f8),
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  textTheme: TextTheme(
                    headline1: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.black)),
                    headline2: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.black)),
                    bodyText1: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.black)),
                    bodyText2: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.black)),
                  ),
                ),
                darkTheme: ThemeData(
                  brightness: Brightness.dark,
                  // colorScheme: ColorScheme.fromSwatch().copyWith(
                  //   secondary: Colors.red, brightness: Brightness.dark),
                  appBarTheme: AppBarTheme(
                    elevation: 0,
                    iconTheme: IconThemeData(color: Colors.grey),
                    backgroundColor: Tools()
                        .hexColor(settingsState.settings.theme.dark_background),

                    // foregroundColor: Colors.white //here you can give the text color
                  ),
                  iconTheme: const IconThemeData(color: Colors.grey),
                  unselectedWidgetColor: Colors.grey,
                  toggleableActiveColor: Tools()
                      .hexColor(settingsState.settings.theme.dark_primary),
                  canvasColor: const Color.fromARGB(250, 37, 45, 58),
                  primaryColorLight: Colors.white,
                  indicatorColor:
                      const Color.fromARGB(250, 30, 38, 49).withOpacity(0.9),
                  cardColor: const Color.fromARGB(250, 37, 45, 58),
                  primaryColor: Tools()
                      .hexColor(settingsState.settings.theme.dark_primary),
                  backgroundColor: const Color.fromARGB(250, 30, 38, 49),
                  scaffoldBackgroundColor:
                      const Color.fromARGB(250, 30, 38, 49),
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  textTheme: TextTheme(
                    headline1: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white)),
                    headline2: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white)),
                    bodyText1: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white)),
                    bodyText2: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white)),
                  ),
                ),
                key: GlobalObjectKey(this),
                routeInformationProvider: routeInformationProvider,
                routeInformationParser: routeInformationParser,
                routerDelegate: routerDelegate,
                routerConfig: routerConfig,
                //  backButtonDispatcher: backButtonDispatcher,
                title: title,
                builder: builder,
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
                restorationScopeId: restorationScopeId,
              ),
            );
          });
        }));
  }
}
