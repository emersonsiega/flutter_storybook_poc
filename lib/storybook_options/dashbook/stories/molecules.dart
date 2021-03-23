import 'package:dashbook/dashbook.dart';
import 'package:flutter_storybook_poc/components/molecules/comment_tile.dart';
import 'package:flutter_storybook_poc/components/molecules/network_image_card.dart';
import 'package:flutter_storybook_poc/storybook_options/dashbook/decorators/padding_decorator.dart';

void addMolecules(Dashbook dashbook) {
  dashbook
      .storiesOf("Molecules")
      .decorator(
        CenterDecorator(),
      )
      .add(
        "CommentTile",
        (context) => CommentTile(onAddComment: (_) {}),
      )
      .decorator(PaddingDecorator())
      .add(
        "NetworkImageContainer",
        (context) => NetworkImageCard(
          title: context.textProperty('title', "The lord of the rings"),
          imageURL: context.textProperty('imageURL',
              "https://images4.alphacoders.com/118/thumb-1920-118904.jpg"),
        ),
      );
}
