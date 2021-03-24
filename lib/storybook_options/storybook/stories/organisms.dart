import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'package:flutter_storybook_poc/components/organisms/image_comments_card.dart';

List<Story> addOrganisms() {
  final _section = 'Organisms';

  return [
    Story(
      section: _section,
      name: 'ImageCommentsCard',
      builder: (BuildContext context, KnobsBuilder k) {
        return ImageCommentsCard(
          title: k.text(label: 'title', initial: "The lord of the rings"),
          image: "assets/image.jpg",
        );
      },
    ),
  ];
}
