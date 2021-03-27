import 'package:flutter/material.dart';

import 'reply_action_widget.dart';
import 'like_action_widget.dart';
import 'retweet_action_widget.dart';

class TweetActionsWidget extends StatelessWidget {
  final int replyCount;
  final int retweetCount;
  final int likeCount;
  final Function()? onRetweet;
  final Function() onLike;
  final Function() onReply;

  TweetActionsWidget({
    required this.replyCount,
    required this.retweetCount,
    required this.likeCount,
    required this.onReply,
    required this.onLike,
    this.onRetweet,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        ReplyActionWidget(
          replyCount: replyCount,
          onReply: onReply,
        ),
        SizedBox(width: 40),
        RetweetActionWidget(
          retweetCount: retweetCount,
          onRetweet: onRetweet,
        ),
        SizedBox(width: 40),
        LikeActionWidget(
          likeCount: likeCount,
          onLike: onLike,
        ),
      ],
    );
  }
}
