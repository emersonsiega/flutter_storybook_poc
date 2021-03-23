import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'package:flutter_storybook_poc/components/atoms/button.dart';
import 'package:flutter_storybook_poc/components/atoms/input_text.dart';
import 'package:flutter_storybook_poc/components/atoms/network_image_container.dart';
import 'package:flutter_storybook_poc/components/atoms/styled_title.dart';

List<Story> addAtoms() {
  final _section = 'Atoms';

  return [
    Story(
      section: _section,
      name: "Button",
      builder: (BuildContext context, KnobsBuilder k) {
        return Button(
          onPressed: () {},
          text: k.text(label: "text", initial: "Button example"),
        );
      },
    ),
    Story(
      section: _section,
      name: "NetworkImageContainer",
      builder: (BuildContext context, KnobsBuilder k) {
        return NetworkImageContainer(
          imageURL: k.text(
            label: 'imageURL',
            initial:
                "https://images4.alphacoders.com/118/thumb-1920-118904.jpg",
          ),
          height: k.slider(label: 'height', initial: 200, min: 100, max: 600),
        );
      },
    ),
    Story(
      section: _section,
      name: "StyledTitle",
      builder: (BuildContext context, KnobsBuilder k) {
        return StyledTitle(
          text: k.text(label: 'text', initial: "Hello!"),
        );
      },
    ),
    Story(
      section: _section,
      name: "InputText",
      builder: (BuildContext context, KnobsBuilder k) {
        return InputText(
          label: k.text(label: "label", initial: "Name"),
          placeholder: k.text(
            label: "placeholder",
            initial: 'Insert your name',
          ),
          inputAction: k.options(
            label: 'inputAction',
            initial: TextInputAction.next,
            options: [
              Option("Next", TextInputAction.next),
              Option("Done", TextInputAction.done),
              Option("Search", TextInputAction.search),
            ],
          ),
          inputType: k.options(
            label: 'inputType',
            initial: TextInputType.text,
            options: [
              Option("Text", TextInputType.text),
              Option("Email", TextInputType.emailAddress),
              Option("Name", TextInputType.name),
              Option("Number", TextInputType.number),
            ],
          ),
          onChanged: (_) {},
        );
      },
    ),
  ];
}
