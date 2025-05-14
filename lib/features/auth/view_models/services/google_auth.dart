import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class GoogleLoginService {
  const GoogleLoginService();

  Future<void> googleAuthSignIn() async {
    const iosClientId =
        '874971490936-oi35vdgf70s9bulmkd61d2ginpjektao.apps.googleusercontent.com';
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId: iosClientId,
    );
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;
    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    try {
      await Supabase.instance.client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOut() async {
    await Supabase.instance.client.auth.signOut();
  }
}

// Riverpod Provider 등록
final googleLoginServiceProvider = Provider<GoogleLoginService>((ref) {
  return const GoogleLoginService();
});
