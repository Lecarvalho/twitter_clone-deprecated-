import 'package:twitter_clone/models/notification_model.dart';
import 'package:twitter_clone/services/providers/database_provider.dart';

import 'providers/database_provider_base.dart';

abstract class NotificationServiceBase {
  DatabaseProviderBase databaseProvider;

  NotificationServiceBase(this.databaseProvider);

  void createNotification();

  Future<List<NotificationModel>> getNotifications();
}
