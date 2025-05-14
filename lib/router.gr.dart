// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:golf_yy/features/auth/views/login.dart' as _i1;
import 'package:golf_yy/features/onboarding/views/onboarding_slides.dart'
    as _i2;

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute({List<_i3.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginScreen();
    },
  );
}

/// generated route for
/// [_i2.OnboardingSlidesScreen]
class OnboardingSlidesRoute extends _i3.PageRouteInfo<void> {
  const OnboardingSlidesRoute({List<_i3.PageRouteInfo>? children})
      : super(
          OnboardingSlidesRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingSlidesRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.OnboardingSlidesScreen();
    },
  );
}
