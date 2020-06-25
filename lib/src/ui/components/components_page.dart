import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ComponentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Components',
      child: Center(
        child: Icon(AntDesign.apple1),
      ),
    );
  }
}
