import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  final bool hideSwitchMode;

  const ButtonsPage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Buttons',
      hideSwitchMode: hideSwitchMode,
      child: Center(child: Text('Hello, Buttons!')),
    );
  }
}
