import 'package:flutter/material.dart';
import 'package:twitter_clone/views/widgets/tweet/selected_tweet_widget.dart';

import '../../models/profile_model.dart';
import '../../models/tweet_model.dart';
import '../resources/styles.dart';
import '../routes.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/tweet_actions/tweet_actions_widget.dart';

class SelectedTweetPage extends StatefulWidget {
  @override
  _SelectedTweetPageState createState() => _SelectedTweetPageState();
}

class _SelectedTweetPageState extends State<SelectedTweetPage> {
  late TweetModel tweet;
  bool _isReady = false;

  @override
  void didChangeDependencies() {
    //get the tweet from controller
    tweet = TweetModel(
      id: 1,
      createdAt: DateTime.now().subtract(Duration(days: 2)),
      content:
          "Even fortnite team put theirs microservices on downtime and theirs 200 million users on hold so they can repair some big issues.",
      replyCount: 10,
      retweetCount: 4,
      likeCount: 3,
      profile: ProfileModel(
          name: "Leandro",
          nickname: "@leandro",
          picture: "https://i.redd.it/4zr7r2y5zy431.png"),
      didILike: true,
      didIRetweet: false,
    );

    setState(() {
      _isReady = true;
    });

    super.didChangeDependencies();
  }

  void _onLike(){
    //call the controller to like or unlike
    setState(() {
      tweet.didILike = !tweet.didILike;
      tweet.likeCount =
          tweet.didILike ? tweet.likeCount + 1 : tweet.likeCount - 1;
    });
    print("you like the tweet: ${tweet.id}");
  }

  void _onReply(TweetModel tweet) {
    Navigator.of(context).pushNamed(Routes.reply);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text("Tweet", style: Styles.h6),
      ),
      body: _isReady
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SelectedTweetWidget(tweet: tweet),
                Divider(),
                TweetActionsWidget(
                  replyCount: tweet.replyCount,
                  retweetCount: tweet.retweetCount,
                  likeCount: tweet.likeCount,
                  onReply: () => _onReply(tweet),
                  onLike: _onLike,
                  didILike: tweet.didILike,
                  didIRetweet: tweet.didIRetweet,
                ),
                Divider(),
              ],
            )
          : Text("Loading..."),
    );
  }
}
