import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  final bool hideSwitchMode;

  const IntroductionPage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Introduction',
      hideSwitchMode: hideSwitchMode,
      child: Center(child: Text('Olá Introduction!')),
    );
  }
}
