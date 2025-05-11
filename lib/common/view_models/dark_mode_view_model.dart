import 'dart:ui';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final darkModeProvider = Provider<bool>((ref) {
  return PlatformDispatcher.instance.platformBrightness == Brightness.dark;
});
