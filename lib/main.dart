import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'navigation_service.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: NavigationService.navigatorKey,
      onGenerateRoute: RouteGenerator.generateRoutes,
      home: const HomePage(),
    );
  }
}

