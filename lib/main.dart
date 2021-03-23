import 'package:flutter/material.dart';

import './home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Storybook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        '/': (_) => Home(),
        '/dashbook': (_) => Scaffold(
              appBar: AppBar(title: Text("Daskbook")),
            ),
        '/storyboard': (_) => Scaffold(
              appBar: AppBar(title: Text("Storyboard")),
            ),
        '/storybook_flutter': (_) => Scaffold(
              appBar: AppBar(title: Text("Storybook Flutter")),
            ),
      },
    );
  }
}
