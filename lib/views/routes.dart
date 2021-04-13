import 'package:flutter/material.dart';
import 'package:twitter_clone/views/pages/edit_profile.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/new_tweet_page.dart';
import 'pages/preload_page.dart';
import 'pages/reply_page.dart';
import 'pages/selected_tweet_page.dart';

class Routes {
  
  static const String home = "/home";
  static const String reply = "/reply";
  static const String new_tweet = "/new_tweet";
  static const String selected_tweet = "/selected_tweet";
  static const String login = "/login";
  static const String preload = "/preload";
  static const String edit_profile = "/edit_profile";

  static final routes = <String, WidgetBuilder> {
    home: (BuildContext context) => HomePage(),
    reply: (BuildContext context) => ReplyPage(),
    new_tweet: (BuildContext context) => NewTweetPage(),
    selected_tweet: (BuildContext context) => SelectedTweetPage(),
    login: (BuildContext context) => LoginPage(),
    preload: (BuildContext context) => PreloadPage(),
    edit_profile: (BuildContext context) => EditProfilePage(),
  };
}