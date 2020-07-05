import 'package:designsystem/src/core/storage/storage.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:designsystem/src/core/theme/theme.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  static final String route = '/settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final _settings = Provider.of<Settings>(context, listen: false);

    return CustomAppBar(
      pageTitle: 'Settings',
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: ListView(
          children: [
            _buildTheme(_settings),
          ],
        ),
      ),
    );
  }

  Widget _buildTheme(Settings settings) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SelectableText('Theme').h1(),
          ),
          Visibility(
            visible: !settings.isSystemTheme,
            child: SwitchListTile(
              title: SelectableText('Dark mode')
                  .h2(style: TextStyle(fontWeight: FontWeight.w200)),
              value: settings.isDark,
              onChanged: settings.updateIsDark,
            ),
          ),
          Visibility(
            visible: !settings.isDark,
            child: SwitchListTile(
              title: SelectableText('System mode')
                  .h2(style: TextStyle(fontWeight: FontWeight.w200)),
              value: settings.isSystemTheme,
              onChanged: settings.updateIsSystemTheme,
            ),
          ),
        ],
      );
}
