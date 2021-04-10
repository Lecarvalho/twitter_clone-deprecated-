import 'package:twitter_clone/services/auth_service_base.dart';
import 'package:twitter_clone/services/providers/auth_provider.dart';

import 'service_base.dart';

class AuthService extends AuthServiceBase {
  AuthService(AuthProvider provider) : super(provider);

  @override
  void createWithEmailAndPassword() {
    
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