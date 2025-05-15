import 'package:flutter/material.dart';
import 'package:golf_yy/features/auth/view_models/socialAuth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthSignOutButton extends ConsumerWidget {
  const AuthSignOutButton({super.key});

  void onSignOutTap(BuildContext context, WidgetRef ref) {
    ref.read(socialAuthProvider).signOut();
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
