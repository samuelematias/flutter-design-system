import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:designsystem/src/core/storage/storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  final String pageTitle;
  final Widget child;
  final GestureTapCallback onClickBackButton;

  const CustomAppBar({
    @required this.pageTitle,
    @required this.child,
    this.onClickBackButton,
  });
  @override
  Widget build(BuildContext context) {
    final _settings = Provider.of<Settings>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: DayNightSwitcherIcon(
              isDarkModeEnabled: _settings.isDark,
              onStateChanged: _settings.updateIsDark,
            ),
          ),
        ],
      ),
      body: child,
    );
  }
}
