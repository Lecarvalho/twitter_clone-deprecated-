import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/styles.dart';
import 'package:twitter_clone/views/widgets/profile_picture_widget.dart';
import 'package:twitter_clone/views/widgets/tweet_actions/tweet_actions_widget.dart';

class SingleTweetWidget extends StatelessWidget {
  final String profileName;
  final String profileNickname;
  final String tweetedTimeAgo;
  final String tweetContent;
  final int replyCount;
  final int likeCount;
  final int retweetCount;
  final Function() onReply;
  final Function() onLike;
  final Function() onRetweet;

  SingleTweetWidget({
    required this.profileName,
    required this.profileNickname,
    required this.tweetedTimeAgo,
    required this.tweetContent,
    required this.replyCount,
    required this.likeCount,
    required this.retweetCount,
    required this.onReply,
    required this.onLike,
    required this.onRetweet,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfilePictureWidget(
                pictureType: PictureType.medium,
                pictureUrl: "https://i.redd.it/4zr7r2y5zy431.png",
              ),
              SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: profileName,
                        style: Styles.subtitle1,
                        children: [
                          TextSpan(
                            text: " $profileNickname · $tweetedTimeAgo",
                            style: Styles.body2Gray,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(tweetContent),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          TweetActionsWidget(
            replyCount: replyCount,
            retweetCount: retweetCount,
            likeCount: likeCount,
            onReply: onReply,
            onLike: onLike,
            onRetweet: onRetweet,
          ),
        ],
      ),
    );
  }
}
