// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:golf_yy/features/auth/views/login_screen.dart' as _i1;
import 'package:golf_yy/features/common/screens/main_navigation_screen.dart'
    as _i2;
import 'package:golf_yy/features/onboarding/views/onboarding_slides.dart'
    as _i3;
import 'package:golf_yy/features/timeline/views/timeline_screen.dart' as _i4;

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i1.LoginScreen(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.MainNavigationScreen]
class MainNavigationRoute extends _i5.PageRouteInfo<void> {
  const MainNavigationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainNavigationRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainNavigationScreen();
    },
  );
}

/// generated route for
/// [_i3.OnboardingSlidesScreen]
class OnboardingSlidesRoute extends _i5.PageRouteInfo<void> {
  const OnboardingSlidesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          OnboardingSlidesRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingSlidesRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.OnboardingSlidesScreen();
    },
  );
}

/// generated route for
/// [_i4.TimelineScreen]
class TimelineRoute extends _i5.PageRouteInfo<void> {
  const TimelineRoute({List<_i5.PageRouteInfo>? children})
      : super(
          TimelineRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimelineRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.TimelineScreen();
    },
  );
}
