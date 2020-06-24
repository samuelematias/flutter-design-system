import 'package:designsystem/src/core/storage/storage.dart';
import 'package:designsystem/src/core/theme/app_theme.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Settings _settings;

  @override
  void initState() {
    _settings = Settings();
    _settings.init();
    super.initState();
  }

  @override
  void dispose() {
    _settings?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Settings>.value(value: _settings),
      ],
      child: StreamBuilder<Settings>(
          stream: _settings.stream,
          builder: (context, snapshot) {
            return MaterialApp(
              debugShowCheckedModeBanner: _settings.isFresh,
              title: 'Design System',
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: _settings.isDark ? ThemeMode.dark : ThemeMode.light,
              home: CustomTabBar(),
            );
          }),
    );
  }
}
