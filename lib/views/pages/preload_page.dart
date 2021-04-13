import 'package:flutter/material.dart';
import 'package:twitter_clone/config/di.dart';
import 'package:twitter_clone/controllers/auth_controller.dart';
import 'package:twitter_clone/services/auth_service.dart';
import 'package:twitter_clone/services/providers/auth_provider.dart';
import 'package:twitter_clone/views/resources/pop_message.dart';

import '../routes.dart';

class PreloadPage extends StatefulWidget {
  @override
  _PreloadPageState createState() => _PreloadPageState();
}

class _PreloadPageState extends State<PreloadPage> {

  late AuthController _authController;

  @override
  void didChangeDependencies() async {
    
    _authController = Di.authController;

    final response = await _authController.tryAutoSignIn();

    if (response.success){
      Navigator.of(context).pushReplacementNamed(Routes.home);
    }
    else {
      PopMessage.show(response.message, context);
      Navigator.of(context).pushReplacementNamed(Routes.login);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container()
    );
  }
}