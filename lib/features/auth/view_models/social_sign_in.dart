import 'package:golf_yy/features/auth/view_models/services/google_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SocialSignIn {
  final GoogleLoginService googleLoginService;

  SocialSignIn({required this.googleLoginService});

  Future<void> googleSignIn() async {
    await googleLoginService.googleAuthSignIn();
    print('google sign in success');
  }

  Future<void> signOut() async {
    await googleLoginService.signOut();
  }
}

final socialSignInProvider = Provider<SocialSignIn>((ref) {
  return SocialSignIn(
      googleLoginService: ref.watch(googleLoginServiceProvider));
});
