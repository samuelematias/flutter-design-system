import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TypographyPage extends StatelessWidget {
  final bool hideSwitchMode;

  const TypographyPage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Typography',
      hideSwitchMode: hideSwitchMode,
      child: Center(child: Text('Hello, Typography!')),
    );
  }
}
