import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ComponentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
        elevation: 0,
      ),
      body: Center(
        child: Icon(AntDesign.apple1),
      ),
    );
  }
}
