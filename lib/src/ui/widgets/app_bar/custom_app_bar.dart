import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String pageTitle;
  final Widget child;
  final GestureTapCallback onClickBackButton;
  final bool hideSwitchMode;
  final List<Widget> actions;

  const CustomAppBar({
    @required this.pageTitle,
    @required this.child,
    this.onClickBackButton,
    this.hideSwitchMode = false,
    this.actions,
  });
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => _onWillPop(context),
      child: Scaffold(
        appBar: AppBar(
          title: SelectableText(pageTitle),
          elevation: 0,
          actions: actions,
        ),
        body: SafeArea(child: child),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    if (Navigator.of(context).userGestureInProgress) {
      return false;
    } else {
      return true;
    }
  }
}
