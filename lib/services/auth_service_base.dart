import 'package:twitter_clone/services/service_base.dart';

import 'providers/auth_provider.dart';

abstract class AuthServiceBase extends ServiceBase<AuthProvider> {
  AuthServiceBase(AuthProvider provider) : super(provider);

  void createWithEmailAndPassword();
  void signInWithEmailAndPassword();
  void signInOrCreateWithGoogle();
}