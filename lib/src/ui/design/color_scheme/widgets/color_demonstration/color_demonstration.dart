import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:designsystem/src/core/theme/theme.dart';

class ColorDemonstration extends StatelessWidget {
  final String colorName;
  final String colorHex;

  const ColorDemonstration({
    @required this.colorName,
    @required this.colorHex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 150,
              height: 85,
              decoration: BoxDecoration(
                color: Color(int.parse(colorHex)),
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.0, top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    colorName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ).h3(style: TextStyle(color: Colors.white)),
                  Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text('$colorHex')
                        .h4(style: TextStyle(color: Colors.white70)),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10.0,
              bottom: 10.0,
              child: CopyText(
                textCopied: '$colorHex',
                textTooltip: "Copy dart code color",
              ),
            )
          ],
        )
      ],
    );
  }
}
