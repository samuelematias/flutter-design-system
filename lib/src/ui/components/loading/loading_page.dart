import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  final bool hideSwitchMode;

  const LoadingPage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Loading',
      hideSwitchMode: hideSwitchMode,
      child: Center(child: Text('Hello, Loading!')),
    );
  }
}
