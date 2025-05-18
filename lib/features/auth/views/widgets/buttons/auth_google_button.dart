import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:golf_yy/common/widgets/themed_text.dart';
import 'package:golf_yy/features/auth/view_models/auth_state_provider.dart';
import 'package:golf_yy/features/auth/view_models/socialAuth.dart';
import 'package:golf_yy/router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthGoogleButton extends ConsumerWidget {
  AuthGoogleButton({super.key});

  bool isLoggingIn = false;

  void onGoogleSignInTap(BuildContext context, WidgetRef ref) async {
    if (isLoggingIn) return;
    isLoggingIn = true;

    await ref.read(socialAuthProvider).googleSignIn();

    final isLoggedInAfter = ref.watch(isLoggedInProvider).value;
    if (isLoggedInAfter == true) {
      print('login success');
      context.router.push(const TimelineRoute());
    } else {
      print('login failed');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('ログインに失敗しました'),
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.red,
          action: SnackBarAction(
            label: '閉じる',
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
          ),
        ),
      );
    }

    isLoggingIn = false;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 44,
      child: ElevatedButton(
        onPressed: () {
          onGoogleSignInTap(context, ref);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffF2F2F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Center(
              child: Text(
                'Googleで続ける',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 44,
                height: 44,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Image.asset('assets/logos/auth_google.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
