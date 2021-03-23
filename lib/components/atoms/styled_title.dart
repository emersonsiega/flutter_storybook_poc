import 'package:flutter/material.dart';

class StyledTitle extends StatelessWidget {
  final String text;

  const StyledTitle({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6.copyWith(
            color: Theme.of(context).primaryColor,
          ),
    );
  }
}
