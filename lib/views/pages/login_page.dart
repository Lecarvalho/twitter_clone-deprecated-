import 'package:flutter/material.dart';
import 'package:twitter_clone/config/app_params.dart';
import 'package:twitter_clone/config/di.dart';
import 'package:twitter_clone/controllers/auth_controller.dart';
import 'package:twitter_clone/views/resources/project_logos.dart';
import 'package:twitter_clone/views/resources/styles.dart';
import 'package:twitter_clone/views/widgets/button_widget.dart';
import 'package:twitter_clone/views/widgets/login_with_google_button_widget.dart';
import 'package:twitter_clone/views/widgets/outlined_button_widget.dart';
import 'package:twitter_clone/views/widgets/textbox_widget.dart';

import '../routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  AuthController _authController = Di.authController;

  Widget _buildHeader() {
    return Column(
      children: [
        ProjectLogos.appLogo,
        SizedBox(height: 5),
        Text(AppParams.appName, style: Styles.h6),
        Text("Flutter & Dart App Development Course",
            style: Styles.subtitle2Gray),
      ],
    );
  }

  void _onTapCreateAccount() {

  }

  void _onTapLogin() {

  }

  void _onTapLoginWithGoogle() async {
    var userExists = await _authController.signInOrCreateWithGoogle();

    if (userExists){
      Navigator.of(context).pushReplacementNamed(Routes.home);
    }
    else {
      Navigator.of(context).pushReplacementNamed(Routes.edit_profile);
    }
  }

  Widget _buildCreateUserOrLoginButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButtonWidget(
            text: "Create my account", onTap: _onTapCreateAccount),
        ButtonWidget(text: 'Login', onTap: _onTapLogin),
      ],
    );
  }

  Widget _buildFields() {
    return Column(
      children: [
        TextboxWidget(controller: _emailController, hintText: "Email"),
        TextboxWidget(controller: _passwordController, hintText: "Password", isPassword: true,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: MediaQuery.of(context).size.height - 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildHeader(),
                _buildFields(),
                _buildCreateUserOrLoginButtons(),
                Text("Or"),
                LoginWithGoogleButtonWidget(
                  onTap: _onTapLoginWithGoogle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
