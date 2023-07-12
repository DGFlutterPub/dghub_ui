import 'package:auto_route/auto_route.dart';

import '../../pages/main_page.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: MainRoute.page,
            initial: true,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: 200),
      ];
}

@RoutePage()
class NewPage extends AutoRouter {
  const NewPage({super.key});
}
