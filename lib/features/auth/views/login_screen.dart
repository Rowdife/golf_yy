import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:golf_yy/common/widgets/themed_text.dart';
import 'package:golf_yy/features/auth/view_models/auth_state_provider.dart';
import 'package:golf_yy/features/auth/view_models/socialAuth.dart';
import 'package:golf_yy/features/auth/views/widgets/buttons/auth_apple_button.dart';
import 'package:golf_yy/features/auth/views/widgets/buttons/auth_google_button.dart';
import 'package:golf_yy/router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});

  bool isLoggingIn = false;

  void navigateToTimelineScreen(BuildContext context) {
    context.router.push(const TimelineRoute());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            const ThemedText(text: 'Login'),
            const Gap(10),
            AuthGoogleButton(),
            const Gap(10),
            const AuthAppleButton(),
          ],
        ),
      ),
    );
  }
}
