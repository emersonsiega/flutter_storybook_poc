import 'package:flutter/material.dart';

import '../atoms/asset_image_container.dart';
import '../atoms/styled_title.dart';

class AssetImageCard extends StatelessWidget {
  final String title;
  final String image;

  const AssetImageCard({
    Key key,
    @required this.title,
    @required this.image,
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
            AssetImageContainer(
              image: image,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
