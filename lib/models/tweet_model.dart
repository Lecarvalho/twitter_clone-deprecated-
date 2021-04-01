import 'package:twitter_clone/models/profile_model.dart';
import 'as_tweet_model_base.dart';

class TweetModel extends AsTweetModelBase {

  int replyCount;
  int retweetCount;
  int likeCount;
  bool didILike;
  bool didIRetweet;

  TweetModel({
    required this.replyCount,
    required this.retweetCount,
    required this.likeCount,
    required this.didILike,
    required this.didIRetweet,
    required String content,
    required DateTime createdAt,
    required String id,
    required ProfileModel profile,
  }) : super(
    content: content,
    createdAt: createdAt,
    id: id,
    profile: profile,
  );
}
