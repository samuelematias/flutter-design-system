import 'package:flutter/widgets.dart';

class TabItem {
  final Widget body;
  final String title;
  final IconData iconData;

  TabItem({
    @required this.body,
    @required this.title,
    @required this.iconData,
  });
}
