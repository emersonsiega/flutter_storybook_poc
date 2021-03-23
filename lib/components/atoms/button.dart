import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function onPressed;
  final String text;
  final double borderRadius;
  final double contentPadding;

  const Button({
    Key key,
    @required this.onPressed,
    @required this.text,
    this.borderRadius: 50.0,
    this.contentPadding: 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(contentPadding),
        child: Text(text),
      ),
    );
  }
}
