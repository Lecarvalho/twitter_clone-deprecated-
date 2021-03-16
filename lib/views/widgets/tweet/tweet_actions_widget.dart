import 'package:flutter/material.dart';

import 'comment_action_widget.dart';
import 'like_action_widget.dart';
import 'retweet_action_widget.dart';

class TweetActionsWidget extends StatelessWidget {
  final int commentCount;
  final int retweetCount;
  final int likeCount;

  TweetActionsWidget({
    required this.commentCount,
    required this.retweetCount,
    required this.likeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        CommentActionWidget(commentCount: commentCount),
        SizedBox(width: 30),
        RetweetActionWidget(retweetCount: retweetCount),
        SizedBox(width: 30),
        LikeActionWidget(likeCount: likeCount),
      ],
    );
  }
}
