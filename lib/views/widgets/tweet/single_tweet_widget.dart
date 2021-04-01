import 'package:flutter/src/widgets/framework.dart';
import 'package:twitter_clone/models/tweet_model.dart';
import 'package:twitter_clone/views/widgets/tweet_actions/tweet_actions_widget.dart';
import 'base_tweet_line_widget.dart';

class SingleTweetWidget extends BaseTweetLineWidget {
  final TweetModel tweet;
  final Function() onReply;
  final Function() onLike;
  final Function() onRetweet;

  SingleTweetWidget({
    required this.tweet,
    required this.onReply,
    required this.onLike,
    required this.onRetweet,
  }) : super(
    asTweet: tweet,
  );

  @override
  Widget get tweetActions => TweetActionsWidget(
                        replyCount: tweet.replyCount,
                        retweetCount: tweet.retweetCount,
                        likeCount: tweet.likeCount,
                        onReply: onReply,
                        onLike: onLike,
                        onRetweet: onRetweet,
                        didILike: tweet.didILike,
                        didIRetweet: tweet.didIRetweet,
                      );
}
