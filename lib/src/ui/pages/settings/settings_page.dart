import 'package:designsystem/src/core/storage/storage.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:designsystem/src/core/i18n/i18n.dart';
import 'package:designsystem/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  static final String route = '/settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Settings _settings;

  @override
  void initState() {
    super.initState();
    _settings = context.read<Settings>();
  }

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'settings'.i18n(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: ListView(
          children: [
            _buildTheme(),
            SizedBox(height: 50),
            _buildLanguage(),
          ],
        ),
      ),
    );
  }

  Widget _buildTheme() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: SelectableText('theme'.i18n()).h1(),
          ),
          Visibility(
            visible: !_settings.isSystemTheme,
            child: SwitchListTile(
              title: SelectableText('darkMode'.i18n())
                  .h2(style: TextStyle(fontWeight: FontWeight.w200)),
              value: _settings.isDark,
              onChanged: (value) {
                _settings.updateIsDark(value);
                if (!_settings.isDark) {
                  _settings.updateIsSystemTheme(true);
                }
              },
            ),
          ),
          SwitchListTile(
            title: SelectableText('systemMode'.i18n())
                .h2(style: TextStyle(fontWeight: FontWeight.w200)),
            value: _settings.isSystemTheme,
            onChanged: (value) {
              _settings.updateIsSystemTheme(value);
              if (_settings.isSystemTheme) {
                _settings.updateIsDark(false);
              }
            },
          ),
        ],
      );

  Widget _buildLanguage() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText('language'.i18n()).h1(),
            RadioTile<String>(
              groupValue: _settings.localeKey,
              onChanged: (String value) {
                _settings.updateLocaleKey(value);
                RestartWidget.restartPages(context);
              },
              title: 'english'.i18n(),
              value: 'en_us',
            ),
            RadioTile<String>(
              groupValue: _settings.localeKey,
              onChanged: (String value) {
                _settings.updateLocaleKey(value);
                RestartWidget.restartPages(context);
              },
              title: 'spanish'.i18n(),
              value: 'es_mx',
            ),
            RadioTile<String>(
              groupValue: _settings.localeKey,
              onChanged: (String value) {
                _settings.updateLocaleKey(value);
                RestartWidget.restartPages(context);
              },
              title: 'portuguese'.i18n(),
              value: 'pt_br',
            ),
          ],
        ),
      );
}
