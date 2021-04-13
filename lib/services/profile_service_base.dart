import 'package:twitter_clone/models/user_model.dart';

abstract class ProfileServiceBase {
  UserModel? getUser(String userId);
  Future<void> createUser(UserModel user);
}