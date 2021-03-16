import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/styles.dart';

class TweetActionWidget extends StatelessWidget {
  final int actionCount;
  final Widget icon;

  TweetActionWidget({
    required this.actionCount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(width: 5),
        Text(actionCount.toString(), style: Styles.caption),
      ],
    );
  }
}
