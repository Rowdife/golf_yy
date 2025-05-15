import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final authStateProvider = StreamProvider<bool>((ref) {
  final authStream = Supabase.instance.client.auth.onAuthStateChange;
  // supabaseのauthenticationのログイン状態を確認し、boolで返す。
  return authStream.map((data) {
    final session = data.session;
    final user = session?.user;
    return user != null;
  });
});
