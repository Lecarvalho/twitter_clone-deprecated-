import 'package:twitter_clone/services/service_base.dart';

abstract class AuthServiceBase extends ServiceBase {
  void createWithEmailAndPassword();
  void signInWithEmailAndPassword();
  void signInOrCreateWithGoogle();
}