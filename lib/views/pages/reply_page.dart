import 'package:flutter/material.dart';
import 'package:twitter_clone/config/app_params.dart';
import 'package:twitter_clone/views/widgets/appbar_button_widget.dart';
import 'package:twitter_clone/views/widgets/appbar_widget.dart';
import 'package:twitter_clone/views/widgets/profile_picture_widget.dart';
import 'package:twitter_clone/views/widgets/tweet_textbox_widget.dart';

class ReplyPage extends StatefulWidget {
  @override
  _ReplyPageState createState() => _ReplyPageState();
}

class _ReplyPageState extends State<ReplyPage> {

  final _textController = TextEditingController();

  void _onReply() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        action: AppbarButtonWidget(
          onTap: _onReply,
          text: "Reply",
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePictureWidget(
            pictureType: PictureType.small,
            pictureUrl: "https://images-na.ssl-images-amazon.com/images/I/41bC-%2BNFUEL._AC_.jpg",
          ),
          Flexible(
            child: TweetTextboxWidget(
              controller: _textController,
              hintText: "Tweet your reply",
              maxLength: AppParams.tweetMaxLength,
            ),
          ),
        ],
      ),
    );
  }
}
