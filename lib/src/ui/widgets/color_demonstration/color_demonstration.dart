import 'package:flutter/material.dart';
import 'package:designsystem/src/core/theme/theme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ColoDemonstration extends StatelessWidget {
  final String colorName;
  final String colorHex;

  const ColoDemonstration({
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
                color: Colors.blue,
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.0, top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(colorName).h3(style: TextStyle(color: Colors.white)),
                  Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text(colorHex)
                        .h4(style: TextStyle(color: Colors.white70)),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10.0,
              bottom: 10.0,
              child: InkResponse(
                onTap: () => _onTap(context),
                child: Tooltip(
                  message: "Copy hex code",
                  child: Icon(
                    AntDesign.copy1,
                    size: 20.0,
                    color: Colors.white70,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  void _onTap(BuildContext context) {
    Clipboard.setData(
      ClipboardData(text: colorHex),
    );
    _showSnackBar(context);
  }

  void _showSnackBar(BuildContext context) =>
      Scaffold.of(context).showSnackBar(SnackBar(
        action: SnackBarAction(label: 'Close', onPressed: () {}),
        content: Text('Copied!'),
      ));
}
