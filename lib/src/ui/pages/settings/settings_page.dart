import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  static final String route = '/settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Settings',
      child: Container(),
    );
  }
}
