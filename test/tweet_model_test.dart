import 'package:test/test.dart';
import 'package:twitter_clone/models/profile_model.dart';
import 'package:twitter_clone/models/tweet_model.dart';

void main() {
  group("test all possibles short dates", () {
    test("1 day before", () {
      var aDayBefore = DateTime.now().subtract(Duration(days: 1));

      var creationTimeAgo = TweetModel(
        id: 1,
        content: '',
        createdAt: aDayBefore,
        likeCount: 0,
        replyCount: 0,
        retweetCount: 0,
        profile: ProfileModel.empty(),
        didILike: false,
        didIRetweet: false,
      ).creationTimeAgo;

      expect(creationTimeAgo, "1d");
    });

    test("5 days before", () {
      var aDayBefore = DateTime.now().subtract(Duration(days: 5));

      var creationTimeAgo = TweetModel(
        id: 1,
        content: '',
        createdAt: aDayBefore,
        likeCount: 0,
        replyCount: 0,
        retweetCount: 0,
        profile: ProfileModel.empty(),
        didILike: false,
        didIRetweet: false,
      ).creationTimeAgo;

      expect(creationTimeAgo, "5d");
    });

    test("1 hour before", () {
      var aDayBefore = DateTime.now().subtract(Duration(hours: 1));

      var creationTimeAgo = TweetModel(
        id: 1,
        content: '',
        createdAt: aDayBefore,
        likeCount: 0,
        replyCount: 0,
        retweetCount: 0,
        profile: ProfileModel.empty(),
        didILike: false,
        didIRetweet: false,
      ).creationTimeAgo;

      expect(creationTimeAgo, "1h");
    });

    test("5 hours before", () {
      var aDayBefore = DateTime.now().subtract(Duration(hours: 5));

      var creationTimeAgo = TweetModel(
        id: 1,
        content: '',
        createdAt: aDayBefore,
        likeCount: 0,
        replyCount: 0,
        retweetCount: 0,
        profile: ProfileModel.empty(),
        didILike: false,
        didIRetweet: false,
      ).creationTimeAgo;

      expect(creationTimeAgo, "5h");
    });

    test("1 minute before", () {
      var aDayBefore = DateTime.now().subtract(Duration(minutes: 1));

      var creationTimeAgo = TweetModel(
        id: 1,
        content: '',
        createdAt: aDayBefore,
        likeCount: 0,
        replyCount: 0,
        retweetCount: 0,
        profile: ProfileModel.empty(),
        didILike: false,
        didIRetweet: false,
      ).creationTimeAgo;

      expect(creationTimeAgo, "1m");
    });

    test("30 seconds before", () {
      var aDayBefore = DateTime.now().subtract(Duration(seconds: 30));

      var creationTimeAgo = TweetModel(
        id: 1,
        content: '',
        createdAt: aDayBefore,
        likeCount: 0,
        replyCount: 0,
        retweetCount: 0,
        profile: ProfileModel.empty(),
        didILike: false,
        didIRetweet: false,
      ).creationTimeAgo;

      expect(creationTimeAgo, "30s");
    });
  });
}
