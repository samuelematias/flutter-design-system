import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SkeletonPage extends StatelessWidget {
  final bool hideSwitchMode;

  const SkeletonPage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Skeleton',
      hideSwitchMode: hideSwitchMode,
      child: Center(child: Text('Hello, Skeleton!')),
    );
  }
}
