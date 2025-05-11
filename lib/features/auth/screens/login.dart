import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:golf_yy/common/widgets/themed_text.dart';

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
          ],
        ),
      ),
    );
  }
}
