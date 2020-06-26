import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ColorSchemePage extends StatelessWidget {
  final bool hideSwitchMode;

  const ColorSchemePage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'ColorScheme',
      hideSwitchMode: hideSwitchMode,
      child: Center(child: Text('Hello, ColorScheme!')),
    );
  }
}
