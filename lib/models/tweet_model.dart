import 'package:twitter_clone/models/profile_model.dart';

class TweetModel {
  DateTime createdAt;
  String content;
  int replyCount;
  int retweetCount;
  int likeCount;
  ProfileModel profile;

  TweetModel({
    required this.createdAt,
    required this.content,
    required this.replyCount,
    required this.retweetCount,
    required this.likeCount,
    required this.profile,
  });

  String get creationTimeAgo {
    var now = DateTime.now();
    var difference = createdAt.difference(now);

    if (difference.inDays == 0) {
      if (difference.inHours == 0) {
        if (difference.inMinutes == 0) {
          return (difference.inSeconds * -1).toString() + "s";
        }
        return (difference.inMinutes * -1).toString() + "m";
      }
      return (difference.inHours * -1).toString() + "h";
    }
    return (difference.inDays * -1).toString() + "d";
  }
}
