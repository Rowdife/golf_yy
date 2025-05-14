import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:golf_yy/common/widgets/themed_text.dart';
import 'package:golf_yy/features/auth/views/widgets/buttons/auth_apple_button.dart';
import 'package:golf_yy/features/auth/views/widgets/buttons/auth_google_button.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Center(
        child: Column(
          children: [
            ThemedText(text: 'Login'),
            Gap(10),
            AuthGoogleButton(),
            Gap(10),
            AuthAppleButton(),
          ],
        ),
      ),
    );
  }
}
