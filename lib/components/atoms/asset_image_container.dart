import 'package:flutter/material.dart';

class AssetImageContainer extends StatelessWidget {
  final String image;
  final double height;
  final double width;

  const AssetImageContainer({
    Key key,
    @required this.image,
    this.height: 200,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}
