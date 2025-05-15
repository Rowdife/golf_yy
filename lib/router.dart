import 'package:auto_route/auto_route.dart';
import 'package:golf_yy/features/auth/views/login_screen.dart';
import 'package:golf_yy/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardingSlidesRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: TimelineRoute.page),
      ];
}
