import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:golf_yy/features/auth/view_models/socialAuth.dart';
import 'package:golf_yy/router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthSignOutButton extends ConsumerWidget {
  const AuthSignOutButton({super.key});

  void onSignOutTap(BuildContext context, WidgetRef ref) {
    ref.read(socialAuthProvider).signOut();
    context.router.replace(LoginRoute());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        onSignOutTap(context, ref);
      },
      child: const Text('Sign Out'),
    );
  }
}
