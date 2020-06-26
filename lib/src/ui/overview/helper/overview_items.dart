import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Overview {
  final String id;
  final IconData icon;
  final String title;
  final String subtitle;

  Overview(this.id, this.icon, this.title, this.subtitle);
}

List<Overview> overviewItems() {
  return [
    Overview(
      '1',
      AntDesign.book,
      'Introduction',
      'A brief introduction to the design system',
    ),
  ];
}
