import 'package:flutter/material.dart';

import 'another_screen.dart';
import 'navigation_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Context Free Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                NavigationService().push(
                  MaterialPageRoute(builder: (context) => const AnotherScreen()),
                );
              }, 
              child: const Text("push")
            ),

            ElevatedButton(
              onPressed: () {
                NavigationService().pushNamed('/anotherScreen');
              }, 
              child: const Text("pushNamed")
            ),
          ],
        ),
      ),
    );
  }
}
