import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class Routes {
  
  static const String home = "/home";

  static final routes = <String, WidgetBuilder> {
    home: (BuildContext context) => HomePage()
  };
}