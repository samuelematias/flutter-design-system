import 'package:designsystem/src/ui/design/color_scheme/helper/colors_items.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:designsystem/src/core/theme/theme.dart';

class ColorSchemePage extends StatelessWidget {
  final bool hideSwitchMode;

  const ColorSchemePage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    final List<ColorsItems> _items = colorsItems();

    return CustomAppBar(
      pageTitle: 'Color Scheme',
      hideSwitchMode: hideSwitchMode,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText('Color Scheme').h1(),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText('Color Palette').h2(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: SelectableText(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.')
                        .h2(style: TextStyle(fontWeight: FontWeight.w200)),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        final _item = _items[index];
                        return ColoDemonstration(
                          colorName: _item.colorName,
                          colorHex: _item.colorHex,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
