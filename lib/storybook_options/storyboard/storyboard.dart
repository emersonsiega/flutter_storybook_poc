import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

import 'package:flutter_storybook_poc/storybook_options/storyboard/stories/atoms_list_story.dart';
import 'package:flutter_storybook_poc/storybook_options/storyboard/stories/molecules_list_story.dart';
import 'package:flutter_storybook_poc/storybook_options/storyboard/stories/organisms_list_story.dart';

class StoryboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Storyboard([
      AtomsListStory(),
      MoleculesListStory(),
      OrganismsListStory(),
    ]);
  }
}
