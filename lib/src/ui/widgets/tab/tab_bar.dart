import 'package:designsystem/src/ui/components/components_page.dart';
import 'package:designsystem/src/ui/design/design_page.dart';
import 'package:designsystem/src/ui/overview/overview_page.dart';
import 'package:designsystem/src/ui/widgets/adaptive/adaptive_scaffold.dart';
import 'package:designsystem/src/ui/widgets/tab/tab_item.dart';
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
            title: 'Overview',
            iconData: Icons.home,
            body: OverviewPage(),
          ),
          TabItem(
            title: 'Design',
            iconData: Icons.info,
            body: DesignPage(),
          ),
          TabItem(
            title: 'Components',
            iconData: Icons.contacts,
            body: ComponentsPage(),
          ),
        ],
        selectedIndex: index,
        onSelectionChanged: (val) => _tabsController.value = val,
      ),
    );
  }
}
