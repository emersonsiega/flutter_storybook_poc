import 'package:flutter/material.dart';
import 'package:flutter_storybook_poc/components/molecules/comment_tile.dart';
import 'package:flutter_storybook_poc/components/molecules/network_image_card.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'package:flutter_storybook_poc/components/atoms/button.dart';
import 'package:flutter_storybook_poc/components/atoms/input_text.dart';
import 'package:flutter_storybook_poc/components/atoms/network_image_container.dart';
import 'package:flutter_storybook_poc/components/atoms/styled_title.dart';

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
      name: "NetworkImageContainer",
      builder: (BuildContext context, KnobsBuilder k) {
        return CommentTile(
          onAddComment: (_) {
            return NetworkImageCard(
              title: k.text(label: 'title', initial: "The lord of the rings"),
              imageURL: k.text(
                label: 'imageURL',
                initial:
                    "https://images4.alphacoders.com/118/thumb-1920-118904.jpg",
              ),
            );
          },
        );
      },
    ),
  ];
}
