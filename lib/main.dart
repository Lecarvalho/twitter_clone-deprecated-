// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';

import 'config/di.dart';
import 'views/resources/styles.dart';
import 'views/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  Di.createDi();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ProjectColors.activeBlue,
        primaryIconTheme: IconThemeData(color: ProjectColors.activeBlue),
        appBarTheme: AppBarTheme(color: ProjectColors.white),
        textTheme: TextTheme(
          bodyText2: Styles.body2,
          subtitle1: Styles.subtitle1,
        ),
        typography: Typography.material2018(),
      ),
      routes: Routes.routes,
      initialRoute: Routes.preload,
    );
  }
}
