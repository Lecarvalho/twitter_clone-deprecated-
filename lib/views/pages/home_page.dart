import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "TEST",
          style: Styles.h5Light,
        ),
      ),
    );
  }
}
