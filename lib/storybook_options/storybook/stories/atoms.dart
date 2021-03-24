import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'package:flutter_storybook_poc/components/atoms/button.dart';
import 'package:flutter_storybook_poc/components/atoms/input_text.dart';
import 'package:flutter_storybook_poc/components/atoms/asset_image_container.dart';
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
      name: "AssetImageContainer",
      builder: (BuildContext context, KnobsBuilder k) {
        return AssetImageContainer(
          image: "assets/image.jpg",
          height: k.slider(label: 'height', initial: 200, min: 100, max: 600),
          width: k.boolean(label: 'Use width', initial: true)
              ? k.slider(label: 'width', initial: 350, min: 100, max: 600)
              : null,
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
