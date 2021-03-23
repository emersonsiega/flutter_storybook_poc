import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:flutter/material.dart';

import 'package:flutter_storybook_poc/config/app_theme.dart';
import 'package:flutter_storybook_poc/storybook_options/storybook/stories/atoms.dart';
import 'package:flutter_storybook_poc/storybook_options/storybook/stories/molecules.dart';
import 'package:flutter_storybook_poc/storybook_options/storybook/stories/organisms.dart';

class StorybookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Storybook(
      theme: getAppTheme(),
      darkTheme: getAppDarkTheme(),
      children: [
        ...addAtoms(),
        ...addMolecules(),
        ...addOrganisms(),
      ],
    );
  }
}
