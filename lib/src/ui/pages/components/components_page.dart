import 'package:designsystem/src/core/constants/constants.dart';
import 'package:designsystem/src/core/routes/routes.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:designsystem/src/core/i18n/i18n.dart';
import 'package:flutter/material.dart';

class ComponentsPage extends StatefulWidget {
  static const String route = '/components';

  @override
  _ComponentsPageState createState() => _ComponentsPageState();
}

class _ComponentsPageState extends State<ComponentsPage> {
  final List<Routes> _items = routes();
  final _selection = ValueNotifier<Routes>(null);

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
                  return item.page;
                },
              ),
            )
          ],
        );
      }
      return buildListView(dimens, (val) {
        Navigator.of(context).pushNamed(val.route);
      });
    });
  }

  Widget buildListView(BoxConstraints dimens, ValueChanged<Routes> onSelected) {
    return CustomAppBar(
      pageTitle: 'components'.i18n(),
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(height: 0),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final _item = _items[index];
          return Visibility(
            visible: _item.route.contains('/components'),
            child: ItemTile(
              icon: _item.icon,
              title: _item.title,
              subtitle: _item.subtitle,
              onTap: () => onSelected(_item),
            ),
          );
        },
      ),
    );
  }
}
