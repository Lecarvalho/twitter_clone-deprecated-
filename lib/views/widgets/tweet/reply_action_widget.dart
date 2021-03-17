import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_icons.dart';
import 'package:twitter_clone/views/widgets/tweet/tweet_action_widget.dart';

class ReplyActionWidget extends TweetActionWidget {
  final int replyCount;

  ReplyActionWidget({required this.replyCount})
      : super(
          icon: ProjectIcons.reply,
          actionCount: replyCount,
        );
}
