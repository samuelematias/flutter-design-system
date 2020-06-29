import 'package:designsystem/src/core/constants/constants.dart';
import 'package:designsystem/src/ui/components/buttons/buttons_page.dart';
import 'package:designsystem/src/ui/components/helper/components_items.dart';
import 'package:designsystem/src/ui/components/loading/loading_page.dart';
import 'package:designsystem/src/ui/page_not_found/page_not_found_page.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ComponentsPage extends StatefulWidget {
  @override
  _ComponentsPageState createState() => _ComponentsPageState();
}

class _ComponentsPageState extends State<ComponentsPage> {
  final List<Components> _items = componentsItems();

  final _selection = ValueNotifier<Components>(null);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, dimens) {
      if (dimens.maxWidth >= kTabletBreakpoint) {
        const kListViewWidth = 300.0;
        return Row(
          children: [
            Container(
              width: kListViewWidth,
              child: buildListView(dimens, (val) {
                _selection.value = val;
              }),
            ),
            VerticalDivider(width: 0),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: _selection,
                builder: (context, item, child) {
                  if (item == null) {
                    return Scaffold();
                  }
                  return chooseScreen(itemID: item.id, hideSwitchMode: true);
                },
              ),
            )
          ],
        );
      }
      return buildListView(dimens, (val) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => chooseScreen(itemID: val.id),
          ),
        );
      });
    });
  }

  Widget buildListView(
      BoxConstraints dimens, ValueChanged<Components> onSelected) {
    return CustomAppBar(
      pageTitle: 'Components',
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(height: 0),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final _item = _items[index];
          return ItemTile(
            icon: _item.icon,
            title: _item.title,
            subtitle: _item.subtitle,
            onTap: () => onSelected(_item),
          );
        },
      ),
    );
  }

  Widget chooseScreen({String itemID, bool hideSwitchMode = false}) {
    switch (itemID) {
      case '1':
        return ButtonsPage(hideSwitchMode: hideSwitchMode);
        break;
      case '2':
        return LoadingPage(hideSwitchMode: hideSwitchMode);
        break;
      default:
        return PageNotFoundPage();
    }
  }
}
