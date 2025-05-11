import 'package:flutter/material.dart';
import 'package:golf_yy/common/styles/colors.dart';
import 'package:golf_yy/common/view_models/dark_mode_view_model.dart';
import 'package:golf_yy/common/widgets/themed_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemedButton extends ConsumerWidget {
  final String text;
  final void Function() onPressed;

  const ThemedButton({super.key, required this.text, required this.onPressed});

//elevatedButton 의 색상을 dark모드냐 light 모드냐에 따라서 색상을 변경시켜야해

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isDarkMode
            ? AppColors.buttonOnDarkMode
            : AppColors.buttonOnLightMode,
      ),
      child: ThemedText(text: text),
    );
  }
}
