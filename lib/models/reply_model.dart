import 'as_tweet_model_base.dart';
import 'profile_model.dart';

class ReplyModel extends AsTweetModelBase {

  ReplyModel({
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