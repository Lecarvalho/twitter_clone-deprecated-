import 'package:twitter_clone/services/auth_service_base.dart';

import 'base_controller.dart';

class AuthController extends BaseController<AuthServiceBase> {
  AuthController(AuthServiceBase service) : super(service: service);
    
  void createUserWithEmailAndPassword(){
    service.createWithEmailAndPassword();
  }

  void signInOrCreateWithGoogle(){
    service.signInOrCreateWithGoogle();
  }

  void signInWithEmailAndPassword(){
    service.signInWithEmailAndPassword();
  }
}