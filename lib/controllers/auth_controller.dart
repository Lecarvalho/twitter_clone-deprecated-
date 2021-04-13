import 'package:twitter_clone/models/profile_model.dart';
import 'package:twitter_clone/models/user_model.dart';
import 'package:twitter_clone/services/auth_service_base.dart';
import 'package:twitter_clone/services/profile_service_base.dart';

import 'base_controller.dart';

class AuthController extends BaseController<AuthServiceBase> {
  late ProfileServiceBase profileService;

  AuthController(AuthServiceBase service, ProfileServiceBase profileService) : super(service: service);
    
  void createUserWithEmailAndPassword(String email, String password, String displayName) async {
    final authResponse = await service.createWithEmailAndPassword(email, password, displayName);
    if (authResponse.success){
      //create the user on the database
    }
    //return a message for the user
  }

  Future<bool> signInOrCreateWithGoogle() async {
    final response = await service.signInOrCreateWithGoogle();

    if (response.success){
      final user = profileService.getUser(response.user!.uid);

      if (user == null){
        await profileService.createUser(response.user!);
        return false;
      }

      return true;
    }

    return false;

  }



  void signInWithEmailAndPassword(String email, String password){
    service.signInWithEmailAndPassword(email, password);
  }

  Future<AuthResponse> tryAutoSignIn() async {
    final response = await service.tryAutoSignIn();

    return response;
  }
}