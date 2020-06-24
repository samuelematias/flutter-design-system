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
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Dark mode'),
            value: _settings.isDark,
            onChanged: _settings.updateIsDark,
          )
        ],
      ),
    );
  }
}
