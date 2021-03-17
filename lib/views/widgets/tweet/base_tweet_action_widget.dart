import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/styles.dart';

abstract class BaseTweetActionWidget extends StatelessWidget {
  final int actionCount;
  final Widget icon;

  BaseTweetActionWidget({
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
