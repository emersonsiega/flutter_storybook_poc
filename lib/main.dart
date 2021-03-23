import 'package:flutter/material.dart';

import './storybook_options/dashbook/dashbook.dart';
import './storybook_options/storyboard/storyboard.dart';
import './storybook_options/storybook/storybook.dart';

import './config/app_theme.dart';
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
      theme: getAppTheme(),
      initialRoute: "/",
      routes: {
        '/': (_) => Home(),
        '/dashbook': (_) => DashbookView(),
        '/storyboard': (_) => StoryboardView(),
        '/storybook_flutter': (_) => StorybookView(),
      },
    );
  }
}
