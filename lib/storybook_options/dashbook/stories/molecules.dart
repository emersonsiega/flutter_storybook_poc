import 'package:dashbook/dashbook.dart';
import 'package:flutter_storybook_poc/components/molecules/comment_tile.dart';
import 'package:flutter_storybook_poc/components/molecules/asset_image_card.dart';
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
        "AssetImageCard",
        (context) => AssetImageCard(
          title: context.textProperty('title', "The lord of the rings"),
          image: "assets/image.jpg",
        ),
      );
}
