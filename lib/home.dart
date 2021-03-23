import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _goTo(String route) {
      Navigator.of(context).pushNamed(route);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Storybook packages"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _goTo('/dashbook'),
                child: Text("Dashbook"),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => _goTo('/storyboard'),
                child: Text("Storyboard"),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => _goTo('/storybook_flutter'),
                child: Text("Storybook Flutter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
