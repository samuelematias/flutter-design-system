import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:designsystem/src/core/storage/storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _settings = Provider.of<Settings>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          title: Text('Overview'),
          elevation: 0,
        ),
        body: _darkMode(_settings));
  }

  Widget _darkMode(Settings settings) => SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DayNightSwitcher(
              isDarkModeEnabled: settings.isDark,
              onStateChanged: settings.updateIsDark,
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: DayNightSwitcherIcon(
                isDarkModeEnabled: settings.isDark,
                onStateChanged: settings.updateIsDark,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text('Dark mode is ' +
                  (settings.isDark ? 'enabled' : 'disabled') +
                  '.'),
            ),
          ],
        ),
      );
}
