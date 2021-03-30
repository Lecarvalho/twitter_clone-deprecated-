import 'package:flutter/material.dart';

import '../../../models/tweet_model.dart';
import '../../resources/styles.dart';
import '../profile_picture_widget.dart';

class SelectedTweetWidget extends StatelessWidget {
  final TweetModel tweet;
  SelectedTweetWidget({required this.tweet});

  Widget _buildProfileHeader(){
    return Row(
            children: [
              ProfilePictureWidget(pictureType: PictureType.medium, pictureUrl: tweet.profile.picture),
              Column(
                children: [
                  Text(tweet.profile.name, style: Styles.subtitle1),
                  Text(tweet.profile.nickname, style: Styles.body2Gray),
                ],
              )
            ],
          );
  }

  Widget _buildTimeAgoAndAppName(){
    return Row(
      children: [
        Text("09:28 · 2/21/20"),
        Text(" · "),
        Text("Twitter Clone", style: Styles.body2Blue),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header for the picture, name and nickname
            _buildProfileHeader(),
            SizedBox(height: 5),
            //tweet content
            Text(tweet.content, style: Styles.h5),
            SizedBox(height: 10),
            //time ago and app name
            _buildTimeAgoAndAppName()
          ],
        ),
    );
  }
}