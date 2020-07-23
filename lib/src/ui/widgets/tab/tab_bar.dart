import 'package:designsystem/src/ui/pages/pages.dart';
import 'package:designsystem/src/ui/widgets/adaptive/adaptive_scaffold.dart';
import 'package:designsystem/src/ui/widgets/tab/tab_item.dart';
import 'package:designsystem/src/core/i18n/i18n.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  static const String route = '/';

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  final _tabsController = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _tabsController,
      builder: (context, index, child) => AdaptiveScaffold(
        tabs: [
          TabItem(
            title: 'overview'.i18n(),
            iconData: Icons.home,
            body: OverviewPage(),
          ),
          TabItem(
            title: 'design'.i18n(),
            iconData: Icons.info,
            body: DesignPage(),
          ),
          TabItem(
            title: 'components'.i18n(),
            iconData: Icons.contacts,
            body: ComponentsPage(),
          ),
          TabItem(
            title: 'settings'.i18n(),
            iconData: Icons.settings,
            body: SettingsPage(),
          ),
        ],
        selectedIndex: index,
        onSelectionChanged: (val) => _tabsController.value = val,
      ),
    );
  }
}
