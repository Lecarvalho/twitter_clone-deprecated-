import 'package:flutter/material.dart';
import 'package:twitter_clone/config/app_params.dart';

import 'profile_picture_widget.dart';
import 'tweet_textbox_widget.dart';

class WriteTweetWidget extends StatelessWidget {

  final String profilePictureUrl;
  final TextEditingController textController;
  final String hintText;

  WriteTweetWidget({required this.profilePictureUrl, required this.textController, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3),
          child: ProfilePictureWidget(
            pictureType: PictureType.small,
            pictureUrl: profilePictureUrl,
          ),
        ),
        SizedBox(width: 10),
        Flexible(
          child: TweetTextboxWidget(
            controller: textController,
            hintText: hintText,
            maxLength: AppParams.tweetMaxLength,
          ),
        ),
      ],
    );
  }
}
