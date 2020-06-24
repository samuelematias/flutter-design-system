import 'package:designsystem/src/core/constants/constants.dart';
import 'package:designsystem/src/ui/widgets/tab/tab_item.dart';
import 'package:flutter/material.dart';

class AdaptiveScaffold extends StatelessWidget {
  final List<TabItem> tabs;
  final int selectedIndex;
  final ValueChanged<int> onSelectionChanged;

  const AdaptiveScaffold({
    Key key,
    @required this.tabs,
    @required this.selectedIndex,
    @required this.onSelectionChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, dimens) {
      if (dimens.maxWidth >= kDesktopBreakpoint) {
        final _tabs = <Widget>[];
        for (var i = 0; i < tabs.length; i++) {
          final Color textColor = selectedIndex == i
              ? Theme.of(context)
                  .navigationRailTheme
                  .selectedLabelTextStyle
                  .color
              : Theme.of(context)
                  .navigationRailTheme
                  .unselectedLabelTextStyle
                  .color;
          final Color iconColor = selectedIndex == i
              ? Theme.of(context).navigationRailTheme.selectedIconTheme.color
              : Theme.of(context).navigationRailTheme.unselectedIconTheme.color;

          _tabs.add(ListTile(
            selected: selectedIndex == i,
            title: Text(tabs[i].title,
                style: TextStyle(
                  color: textColor,
                )),
            leading: Icon(
              tabs[i].iconData,
              color: iconColor,
            ),
            onTap: () => onSelectionChanged(i),
          ));
        }
        return Material(
          child: Row(
            children: [
              Container(
                color: Theme.of(context).navigationRailTheme.backgroundColor,
                width: kSideMenuWidth,
                child: ListView(children: _tabs),
              ),
              VerticalDivider(width: 0),
              Expanded(
                child: buildBody(selectedIndex, tabs),
              ),
            ],
          ),
        );
      }
      if (dimens.maxWidth >= kTabletBreakpoint) {
        final _destinations = <NavigationRailDestination>[];
        for (final item in tabs) {
          _destinations.add(NavigationRailDestination(
            label: Text(item.title),
            icon: Icon(item.iconData),
          ));
        }
        return Material(
          child: Row(
            children: [
              NavigationRail(
                labelType: NavigationRailLabelType.all,
                selectedIndex: selectedIndex,
                onDestinationSelected: (val) => onSelectionChanged(val),
                destinations: _destinations,
              ),
              Expanded(
                child: buildBody(selectedIndex, tabs),
              ),
            ],
          ),
        );
      }
      final _tabs = <BottomNavigationBarItem>[];
      for (final item in tabs) {
        _tabs.add(BottomNavigationBarItem(
          title: Text(item.title),
          icon: Icon(item.iconData),
        ));
      }
      return Scaffold(
        body: buildBody(selectedIndex, tabs),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (val) => onSelectionChanged(val),
          // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          items: _tabs,
        ),
      );
    });
  }

  Widget buildBody(int selectedIndex, List<TabItem> tabs) {
    final _children = <Widget>[];
    for (final item in tabs) {
      _children.add(item.body);
    }
    return IndexedStack(
      index: selectedIndex,
      children: _children,
    );
  }
}
