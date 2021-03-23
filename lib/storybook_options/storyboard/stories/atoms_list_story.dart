import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

import 'package:flutter_storybook_poc/components/atoms/button.dart';
import 'package:flutter_storybook_poc/components/atoms/input_text.dart';
import 'package:flutter_storybook_poc/components/atoms/network_image_container.dart';

class ButtonStory extends Story {
  String get title => "Button";

  @override
  List<Widget> get storyContent {
    return [
      Center(
        child: Button(
          onPressed: () {},
          text: "Button example",
        ),
      ),
    ];
  }
}

class NetworkImageContainerStory extends Story {
  String get title => "NetworkImageContainer";

  @override
  List<Widget> get storyContent {
    return [
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

class InputTextStory extends Story {
  String get title => "InputText";

  @override
  List<Widget> get storyContent {
    return [
      Center(
        child: InputText(
          label: "Name",
          placeholder: 'Insert your name',
          onChanged: (_) {},
        ),
      ),
    ];
  }
}
