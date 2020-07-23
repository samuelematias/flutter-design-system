import 'package:designsystem/src/ui/pages/design/color_scheme/helper/colors_items.dart';
import 'package:designsystem/src/ui/pages/design/color_scheme/widgets/color_demonstration/color_demonstration.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:designsystem/src/core/i18n/i18n.dart';
import 'package:designsystem/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class ColorSchemePage extends StatelessWidget {
  static const String route = '/design/color-scheme';

  final bool hideSwitchMode;

  const ColorSchemePage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) => CustomAppBar(
        pageTitle: 'colorScheme'.i18n(),
        hideSwitchMode: hideSwitchMode,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: SelectableText('colorScheme'.i18n()).h1(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: SelectableText('colorPalette'.i18n()).h2(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: SelectableText(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.')
                            .h2(style: TextStyle(fontWeight: FontWeight.w200)),
                      ),
                      _buildColorList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildColorList() {
    return Container(
      height: 400,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        crossAxisCount: 3,
        mainAxisSpacing: 30.0,
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        children: _buildContentList(),
      ),
    );
  }

  List<Widget> _buildContentList() {
    final List<ColorsItems> items = colorsItems();
    return items.map((item) => _buildContentListItem(item)).toList();
  }

  Widget _buildContentListItem(ColorsItems item) => ColorDemonstration(
        colorName: item.colorName,
        colorHex: item.colorHex,
      );
}
