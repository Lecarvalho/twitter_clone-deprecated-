import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_icons.dart';
import 'package:twitter_clone/views/widgets/tweet/tweet_action_widget.dart';

class LikeActionWidget extends TweetActionWidget {
  final int likeCount;

  LikeActionWidget({required this.likeCount})
      : super(
          icon: ProjectIcons.like,
          actionCount: likeCount,
        );
}
