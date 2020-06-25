import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DesignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Design',
      child: Center(
        child: Icon(AntDesign.cloud),
      ),
    );
  }
}
