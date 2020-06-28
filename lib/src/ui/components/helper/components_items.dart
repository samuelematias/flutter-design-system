import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Components {
  final String id;
  final IconData icon;
  final String title;
  final String subtitle;

  Components(this.id, this.icon, this.title, this.subtitle);
}

List<Components> componentsItems() {
  return [
    Components(
      '1',
      Foundation.download,
      'Buttons',
      'The Buttons of the Components system.',
    ),
    Components(
      '2',
      AntDesign.loading1,
      'Loading',
      'The Loading of the Components system.',
    ),
  ];
}
