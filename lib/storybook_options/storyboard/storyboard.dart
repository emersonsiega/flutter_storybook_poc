import 'package:flutter/material.dart';
import 'package:flutter_storybook_poc/storybook_options/storyboard/stories/atoms_list_story.dart';
import 'package:storyboard/storyboard.dart';

class StoryboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Storyboard([
      ButtonStory(),
      NetworkImageContainerStory(),
      //InputTextStory(),
    ]);
  }
}
