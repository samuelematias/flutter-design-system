import 'package:designsystem/src/core/storage/storage.dart';
import 'package:designsystem/src/core/theme/app_theme.dart';
import 'package:designsystem/src/ui/pages/pages.dart';
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
              // home: CustomTabBar(),
              initialRoute: CustomTabBar.route,
              routes: {
                CustomTabBar.route: (context) => CustomTabBar(),
                OverviewPage.route: (context) => OverviewPage(),
                IntroductionPage.route: (context) => IntroductionPage(),
                DesignPage.route: (context) => DesignPage(),
                ColorSchemePage.route: (context) => ColorSchemePage(),
                TypographyPage.route: (context) => TypographyPage(),
                ComponentsPage.route: (context) => ComponentsPage(),
                ButtonsPage.route: (context) => ButtonsPage(),
                LoadingPage.route: (context) => LoadingPage(),
                SettingsPage.route: (context) => SettingsPage(),
                NotFoundPage.route: (context) => NotFoundPage(),
              },
              onUnknownRoute: (settings) {
                return MaterialPageRoute(builder: (_) => NotFoundPage());
              },
            );
          }),
    );
  }
}
