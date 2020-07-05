import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:designsystem/src/core/storage/storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  final String pageTitle;
  final Widget child;
  final GestureTapCallback onClickBackButton;
  final bool hideSwitchMode;

  const CustomAppBar({
    @required this.pageTitle,
    @required this.child,
    this.onClickBackButton,
    this.hideSwitchMode = false,
  });
  @override
  Widget build(BuildContext context) {
    final _settings = Provider.of<Settings>(context, listen: false);

    return WillPopScope(
      onWillPop: () async => _onWillPop(context),
      child: Scaffold(
        appBar: AppBar(
          title: SelectableText(pageTitle),
          elevation: 0,
          actions: [
            Visibility(
              visible: !hideSwitchMode,
              child: Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: DayNightSwitcherIcon(
                  isDarkModeEnabled: _settings.isDark,
                  onStateChanged: _settings.updateIsDark,
                ),
              ),
            ),
          ],
        ),
        body: child,
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
