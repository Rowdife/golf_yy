// import 'package:supabase_flutter/supabase_flutter.dart';

// class AppleAuthService {
//   const AppleAuthService();

//   Future<AuthResponse> signInWithApple() async {
//     final supabase = Supabase.instance.client;
//     final rawNonce = supabase.auth.generateRawNonce();
//     final hashedNonce = sha256.convert(utf8.encode(rawNonce)).toString();
//   final credential = await SignInWithApple.getAppleIDCredential(
//     scopes: [
//       AppleIDAuthorizationScopes.email,
//       AppleIDAuthorizationScopes.fullName,
//     ],
//     nonce: hashedNonce,
//   );
//   final idToken = credential.identityToken;
//   if (idToken == null) {
//     throw const AuthException(
//         'Could not find ID Token from generated credential.');
//   }
//   return supabase.auth.signInWithIdToken(
//     provider: OAuthProvider.apple,
//     idToken: idToken,
//     nonce: rawNonce,
//   );
// }
// }