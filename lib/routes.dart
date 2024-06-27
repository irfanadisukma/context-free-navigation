import 'package:flutter/material.dart';

import 'another_screen.dart';
import 'home_screen.dart';

class RouteGenerator {

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/anotherScreen':
        return MaterialPageRoute(builder: (context) => const AnotherScreen());

      default:
        return MaterialPageRoute(builder: (context) => Scaffold(
          body: Center(
            child: Text("Page Not found ${settings.name}"),
          ),
        ));
    }
  }
}