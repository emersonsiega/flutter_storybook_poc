import 'package:flutter/material.dart';

import '../atoms/network_image_container.dart';
import '../atoms/styled_title.dart';

class NetworkImageCard extends StatelessWidget {
  final String title;
  final String imageURL;

  const NetworkImageCard({
    Key key,
    @required this.title,
    @required this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            StyledTitle(
              text: title,
              align: TextAlign.left,
            ),
            SizedBox(height: 6),
            NetworkImageContainer(
              imageURL: imageURL,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
