import 'package:flutter/material.dart';

class StyledTitle extends StatelessWidget {
  final String text;
  final TextAlign align;

  const StyledTitle({
    Key key,
    @required this.text,
    this.align: TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: Theme.of(context).textTheme.headline6.copyWith(
            color: Theme.of(context).primaryColor,
          ),
    );
  }
}
