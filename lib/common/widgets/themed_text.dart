import 'package:flutter/material.dart';
import 'package:golf_yy/common/styles/colors.dart';
import 'package:golf_yy/common/view_models/dark_mode_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemedText extends ConsumerWidget {
  final String text;

  const ThemedText({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);
    return Text(
      text,
      style: TextStyle(
        color:
            isDarkMode ? AppColors.textOnDarkMode : AppColors.textOnLightMode,
      ),
    );
  }
}
