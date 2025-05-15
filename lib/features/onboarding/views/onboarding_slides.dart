import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:golf_yy/common/widgets/themed_button.dart';
import 'package:golf_yy/common/widgets/themed_text.dart';
import 'package:golf_yy/router.gr.dart';

@RoutePage()
class OnboardingSlidesScreen extends StatelessWidget {
  const OnboardingSlidesScreen({super.key});

  void navigateToLoginScreen(BuildContext context) {
    context.router.push(LoginRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const ThemedText(text: 'Onboarding Slides'),
            ThemedButton(
              text: 'Next',
              onPressed: () => navigateToLoginScreen(context),
            ),
          ],
        ),
      ),
    );
  }
}
