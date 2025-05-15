import 'package:golf_yy/features/auth/view_models/services/google_auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SocialAuth {
  final GoogleAuthService googleAuthService;

  SocialAuth({required this.googleAuthService});

  Future<void> googleSignIn() async {
    await googleAuthService.googleAuthSignIn();
    print('google sign in success');
  }

  Future<void> signOut() async {
    await googleAuthService.signOut();
  }
}

final socialAuthProvider = Provider<SocialAuth>((ref) {
  return SocialAuth(googleAuthService: ref.watch(GoogleAuthServiceProvider));
});
