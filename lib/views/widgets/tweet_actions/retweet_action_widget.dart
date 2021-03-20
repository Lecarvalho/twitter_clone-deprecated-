import 'package:twitter_clone/views/resources/project_icons.dart';

import 'base_tweet_action_widget.dart';

class RetweetActionWidget extends BaseTweetActionWidget {
  final int retweetCount;
  final Function()? onRetweet;

  RetweetActionWidget({required this.retweetCount, required this.onRetweet})
      : super(
          icon: ProjectIcons.retweet,
          actionCount: retweetCount,
          onTap: onRetweet,
        );
}
