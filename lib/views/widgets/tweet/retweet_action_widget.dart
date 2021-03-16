import 'package:twitter_clone/views/resources/project_icons.dart';

import 'tweet_action_widget.dart';

class RetweetActionWidget extends TweetActionWidget {
  final int retweetCount;
  RetweetActionWidget({required this.retweetCount})
      : super(
          icon: ProjectIcons.retweet,
          actionCount: retweetCount,
        );
}
