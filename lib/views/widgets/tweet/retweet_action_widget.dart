import 'package:twitter_clone/views/resources/project_icons.dart';

import 'base_tweet_action_widget.dart';

class RetweetActionWidget extends BaseTweetActionWidget {
  final int retweetCount;
  RetweetActionWidget({required this.retweetCount})
      : super(
          icon: ProjectIcons.retweet,
          actionCount: retweetCount,
        );
}
