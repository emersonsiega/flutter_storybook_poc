import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'package:flutter_storybook_poc/components/molecules/asset_image_card.dart';
import 'package:flutter_storybook_poc/components/molecules/comment_tile.dart';

List<Story> addMolecules() {
  final _molecules = 'Molecules';

  return [
    Story(
      section: _molecules,
      name: "CommentTile",
      builder: (BuildContext context, KnobsBuilder k) {
        return CommentTile(onAddComment: (_) {});
      },
    ),
    Story(
      section: _molecules,
      name: "AssetImageCard",
      builder: (BuildContext context, KnobsBuilder k) {
        return AssetImageCard(
          title: k.text(label: 'title', initial: "The lord of the rings"),
          image: "assets/image.jpg",
        );
      },
    ),
  ];
}
