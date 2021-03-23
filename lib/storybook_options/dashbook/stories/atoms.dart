import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_storybook_poc/components/atoms/button.dart';
import 'package:flutter_storybook_poc/components/atoms/input_text.dart';
import 'package:flutter_storybook_poc/components/atoms/network_image_container.dart';
import 'package:flutter_storybook_poc/components/atoms/styled_title.dart';
import 'package:flutter_storybook_poc/storybook_options/dashbook/decorators/padding_decorator.dart';

void addAtoms(Dashbook dashbook) {
  dashbook
      .storiesOf("Atoms")
      .decorator(PaddingDecorator())
      .add(
        "Button",
        (context) => Button(
          onPressed: () {},
          text: context.textProperty("text", "Button example"),
        ),
      )
      .add(
        "NetworkImageContainer",
        (context) => NetworkImageContainer(
          imageURL: context.textProperty('imageURL',
              "https://images4.alphacoders.com/118/thumb-1920-118904.jpg"),
          height: context.numberProperty('height', 200),
        ),
      )
      .add(
        "StyledTitle",
        (context) => StyledTitle(text: context.textProperty('text', "Hello!")),
      )
      .add(
        "InputText",
        (context) => InputText(
          label: context.textProperty("label", "Name"),
          placeholder: context.textProperty("placeholder", 'Insert your name'),
          onChanged: (_) {},
          inputAction: context.listProperty(
            'inputAction',
            TextInputAction.next,
            [
              TextInputAction.next,
              TextInputAction.done,
              TextInputAction.search,
            ],
          ),
        ),
      );
}
