import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Design {
  final String id;
  final IconData icon;
  final String title;
  final String subtitle;

  Design(this.id, this.icon, this.title, this.subtitle);
}

List<Design> designItems() {
  return [
    Design(
      '1',
      Ionicons.md_color_palette,
      'Color Scheme',
      'The UI Colors of the design system.',
    ),
    Design(
      '2',
      FontAwesome.text_height,
      'Typography',
      'The Fonts, Fonts Sizes and Fonts Family of the design system.',
    ),
  ];
}
