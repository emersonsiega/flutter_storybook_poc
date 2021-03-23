import 'package:dashbook/dashbook.dart';
import 'package:flutter_storybook_poc/components/organisms/image_comments_card.dart';
import 'package:flutter_storybook_poc/storybook_options/dashbook/decorators/padding_decorator.dart';

void addOrganisms(Dashbook dashbook) {
  dashbook
      .storiesOf("Organisms")
      .decorator(
        CenterDecorator(),
      )
      .decorator(
        PaddingDecorator(),
      )
      .add(
        "ImageCommentsCard",
        (context) => ImageCommentsCard(
          title: context.textProperty('title', "The lord of the rings"),
          imageURL: context.textProperty('imageURL',
              "https://images4.alphacoders.com/118/thumb-1920-118904.jpg"),
        ),
      );
}
