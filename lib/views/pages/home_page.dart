import 'package:flutter/material.dart';
import 'package:twitter_clone/views/pages/search_page.dart';
import 'package:twitter_clone/views/resources/project_icons.dart';
import 'package:twitter_clone/views/resources/project_logos.dart';
import 'package:twitter_clone/views/widgets/appbar_widget.dart';
import 'package:twitter_clone/views/widgets/bottom_navigation_bar_widget.dart';
import 'package:twitter_clone/views/widgets/tweet/single_tweet_widget.dart';
import 'package:twitter_clone/views/widgets/tweet_actions/tweet_actions_widget.dart';
import '../routes.dart';
import 'notifications_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTapNavigationBar(int index) {
    print("tapped navigation bar");
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onRetweet() {
    print("you want to retweet");
  }

  void _onReply() {
    Navigator.of(context).pushNamed(Routes.reply);
  }

  void _onLike() {
    print("you like it!");
  }

  void _onTapCreateTweet() {
    Navigator.of(context).pushNamed(Routes.new_tweet);
  }

  Set<Widget>? _pageSimulation;
  bool _isReady = false;

  @override
  void didChangeDependencies() {
    _pageSimulation = <Widget>{
      SingleTweetWidget(
        profileName: "Leandro",
        profileNickname: "@leandro",
        tweetedTimeAgo: "5m",
        likeCount: 10,
        tweetContent: 'Hey it''s my first tweet! Bla bla bla lkjldfkjlsdfk lksjlfjkdslkj lsdjflkdsfj',
        onLike: _onLike,
        onReply: _onReply,
        replyCount: 14,
        retweetCount: 12,
        onRetweet: _onRetweet,
      ),
      SearchPage(),
      NotificationsPage(),
      ProfilePage(),
    };

    setState(() {
      _isReady = true;
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: ProjectLogos.twitter,
        action: IconButton(
          icon: ProjectIcons.feature,
          onPressed: () {
            print("testing action button");
          },
        ),
      ),
      drawer: Drawer(
        child: Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapCreateTweet,
        child: ProjectIcons.newTweet,
      ),
      body: _isReady
          ? Center(
              child: _pageSimulation!.elementAt(_selectedIndex),
            )
          : Container(),
      bottomNavigationBar: BottomNavigationBarWidget(
        onTapNavigationBar: _onTapNavigationBar,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
