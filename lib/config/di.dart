import 'package:twitter_clone/controllers/auth_controller.dart';
import 'package:twitter_clone/controllers/notification_controller.dart';
import 'package:twitter_clone/services/auth_service.dart';
import 'package:twitter_clone/services/notification_service.dart';
import 'package:twitter_clone/services/profile_service.dart';
import 'package:twitter_clone/services/providers/auth_provider.dart';
import 'package:twitter_clone/services/providers/database_provider.dart';

class Di {

  Di._();

  static late NotificationController notificationController;
  static late AuthController authController;

  static void createDi(){

    var databaseProvider = DatabaseProvider();
    var authProvider = AuthProvider();
    var authService = AuthService(authProvider);
    var profileService = ProfileService();

    databaseProvider.init();
    authProvider.init();

    notificationController = NotificationController(NotificationService(databaseProvider));
    authController = AuthController(authService, profileService);
  }
  
}