import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';

import '../../config/app_theme.dart';

import 'stories/atoms.dart';
import 'stories/molecules.dart';
import 'stories/organisms.dart';

class DashbookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dashbook = Dashbook(
      title: 'Dashbook Example',
      theme: getAppTheme(),
    );

    addAtoms(dashbook);
    addMolecules(dashbook);
    addOrganisms(dashbook);

    return dashbook;
  }
}
