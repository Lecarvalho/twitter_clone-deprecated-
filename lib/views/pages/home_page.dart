import 'package:flutter/material.dart';
import 'package:twitter_clone/views/pages/search_page.dart';
import 'package:twitter_clone/views/resources/project_icons.dart';
import 'package:twitter_clone/views/resources/project_logos.dart';
import 'package:twitter_clone/views/widgets/appbar_widget.dart';
import 'package:twitter_clone/views/widgets/bottom_navigation_bar_widget.dart';
import 'package:twitter_clone/views/widgets/button_widget.dart';
import 'package:twitter_clone/views/widgets/outlined_button_widget.dart';

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

  bool flagTest = true;

  void _onButtonClick() {
    print("ok now it's good");
  }

  Set<Widget>? _pageSimulation;
  bool _isReady = false;


  @override
  void didChangeDependencies() {
    
    _pageSimulation = <Widget>{
      OutlinedButtonWidget(
        text: 'Text for my button',
        onTap: _onButtonClick,
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
        onPressed: () {
          print("create new tweet action button is working!");
        },
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
