import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';

class PaddingDecorator extends Decorator {
  @override
  Widget decorate(Widget child) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Center(child: child),
    );
  }
}
