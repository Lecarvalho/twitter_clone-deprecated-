import 'package:twitter_clone/services/providers/auth_provider.dart';

import '../auth_service_base.dart';

class AuthServiceMock extends AuthServiceBase {
  AuthServiceMock(AuthProvider provider) : super(provider);

  @override
  void createWithEmailAndPassword() {
    // TODO: implement createWithEmailAndPassword
  }

  @override
  void signInOrCreateWithGoogle() {
    // TODO: implement signInOrCreateWithGoogle
  }

  @override
  void signInWithEmailAndPassword() {
    // TODO: implement signInWithEmailAndPassword
  }
  
}