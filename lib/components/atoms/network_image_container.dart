import 'package:flutter/material.dart';

class NetworkImageContainer extends StatelessWidget {
  final String imageURL;
  final double height;
  final double width;
  final BoxFit fit;

  const NetworkImageContainer({
    Key key,
    @required this.imageURL,
    this.height: 200,
    this.width,
    this.fit: BoxFit.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff5e5e5e),
            blurRadius: 3,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Image.network(
        imageURL,
        fit: fit,
        height: height,
        width: width,
      ),
    );
  }
}
