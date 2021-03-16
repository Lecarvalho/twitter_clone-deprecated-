import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_icons.dart';
import 'package:twitter_clone/views/widgets/tweet/tweet_action_widget.dart';

class CommentActionWidget extends TweetActionWidget {
  final int commentCount;

  CommentActionWidget({required this.commentCount})
      : super(
          icon: ProjectIcons.comment,
          actionCount: commentCount,
        );
}
