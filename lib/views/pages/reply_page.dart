import 'package:flutter/material.dart';
import 'package:twitter_clone/views/widgets/appbar_button_widget.dart';
import 'package:twitter_clone/views/widgets/appbar_widget.dart';
import 'package:twitter_clone/views/widgets/replying_widget.dart';

class ReplyPage extends StatefulWidget {
  @override
  _ReplyPageState createState() => _ReplyPageState();
}

class _ReplyPageState extends State<ReplyPage> {
  final _textController = TextEditingController();

  void _onReply() {
    print("replying action!");
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
      body: ReplyingWidget(
        profilePictureUrl: 'https://images-na.ssl-images-amazon.com/images/I/41bC-%2BNFUEL._AC_.jpg',
        replyingToProfileNickname: '@maxjacobson',
        textController: _textController,
      ),
    );
  }
}
