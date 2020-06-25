import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Overview',
      child: Center(child: Text('Olá Mundo!')),
    );
  }
}
