import 'package:flutter/material.dart';

class RestartWidget extends StatefulWidget {
  RestartWidget({this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    Future.microtask(() =>
        context.findAncestorStateOfType<_RestartWidgetState>().restartApp());
  }

  static void restartPages(BuildContext context) {
    Future.microtask(() =>
        context.findAncestorStateOfType<_RestartWidgetState>().restartPages());
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  void restartPages() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: Container(
        color: Colors.white,
        child: widget.child,
      ),
    );
  }
}
