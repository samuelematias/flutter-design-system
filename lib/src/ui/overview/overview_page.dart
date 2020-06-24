import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overview'),
        elevation: 0,
      ),
      body: Center(
        child: Icon(AntDesign.chrome),
      ),
    );
  }
}
