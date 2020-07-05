import 'package:designsystem/src/core/constants/constants.dart';
import 'package:designsystem/src/core/routes/routes.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatefulWidget {
  static final String route = '/overview';

  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  final List<Routes> _items = routes();
  // final String a = widget.route;
  final _selection = ValueNotifier<Routes>(null);

  @override
  Widget build(BuildContext context) {
    // final String a = widget.route;
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
      pageTitle: 'Overview',
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(height: 0),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final _item = _items[index];
          return Visibility(
            visible: _item.route.contains('/overview'),
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
