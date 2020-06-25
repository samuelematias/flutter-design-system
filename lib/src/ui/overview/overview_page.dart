import 'package:designsystem/src/core/constants/constants.dart';
import 'package:designsystem/src/ui/overview/helper/overview_items.dart';
import 'package:designsystem/src/ui/overview/introduction/introduction_page.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  final List<Overview> _overviewItems = overviewItems();

  final _selection = ValueNotifier<Overview>(null);

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
            VerticalDivider(
              width: 0,
            ),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: _selection,
                builder: (context, overviewItem, child) {
                  if (overviewItem == null) {
                    return Scaffold();
                  }
                  return IntroductionPage(hideSwitchMode: true);
                },
              ),
            )
          ],
        );
      }
      return buildListView(dimens, (val) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => IntroductionPage(),
          ),
        );
      });
    });
  }

  Widget buildListView(
      BoxConstraints dimens, ValueChanged<Overview> onSelected) {
    return CustomAppBar(
      pageTitle: 'Overview',
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(height: 0),
        itemCount: _overviewItems.length,
        itemBuilder: (context, index) {
          final _overviewItem = _overviewItems[index];
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(_overviewItem.title),
            subtitle: Text(_overviewItem.subtitle),
            onTap: () => onSelected(_overviewItem),
          );
        },
      ),
    );
  }
}
