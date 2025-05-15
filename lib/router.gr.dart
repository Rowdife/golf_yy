// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:golf_yy/features/auth/views/login_screen.dart' as _i1;
import 'package:golf_yy/features/onboarding/views/onboarding_slides.dart'
    as _i2;
import 'package:golf_yy/features/timeline/views/timeline_screen.dart' as _i3;

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i4.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
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

  final _i5.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.OnboardingSlidesScreen]
class OnboardingSlidesRoute extends _i4.PageRouteInfo<void> {
  const OnboardingSlidesRoute({List<_i4.PageRouteInfo>? children})
      : super(
          OnboardingSlidesRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingSlidesRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.OnboardingSlidesScreen();
    },
  );
}

/// generated route for
/// [_i3.TimelineScreen]
class TimelineRoute extends _i4.PageRouteInfo<void> {
  const TimelineRoute({List<_i4.PageRouteInfo>? children})
      : super(
          TimelineRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimelineRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.TimelineScreen();
    },
  );
}
