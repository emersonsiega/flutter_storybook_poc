import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

import 'package:flutter_storybook_poc/components/atoms/button.dart';
import 'package:flutter_storybook_poc/components/atoms/network_image_container.dart';

class AtomsListStory extends Story {
  String get title => "Atoms";

  @override
  List<Widget> get storyContent {
    return [
      Center(
        child: Button(
          onPressed: () {},
          text: "Button example",
        ),
      ),
      Center(
        child: NetworkImageContainer(
          imageURL: "https://images4.alphacoders.com/118/thumb-1920-118904.jpg",
          height: 200,
          width: 400,
        ),
      ),
    ];
  }
}
