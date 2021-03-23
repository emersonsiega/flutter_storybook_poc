import 'package:flutter/material.dart';

class NetworkImageContainer extends StatelessWidget {
  final String imageURL;
  final double height;
  final double width;

  const NetworkImageContainer({
    Key key,
    @required this.imageURL,
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
          image: NetworkImage(imageURL),
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
