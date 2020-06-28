import 'package:designsystem/src/core/storage/storage.dart';
import 'package:designsystem/src/ui/widgets/highlight/highlight_code.dart';
import 'package:flutter/material.dart';
import 'package:designsystem/src/core/theme/theme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';

class HighlightExample extends StatelessWidget {
  final String code;
  final List<Widget> examples;

  const HighlightExample({
    @required this.code,
    @required this.examples,
  });
  @override
  Widget build(BuildContext context) {
    final _settings = Provider.of<Settings>(context, listen: false);

    return Container(
      constraints: BoxConstraints(
        minWidth: 550,
        minHeight: 200.0,
      ),
      decoration: BoxDecoration(
        color: _settings.isDark
            ? ColorPalette.atomOneLightBg
            : ColorPalette.atomOneDarkBg,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(children: examples),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            constraints: BoxConstraints(minWidth: 550),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: ColorPalette.grey100, width: 1.0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighlightCode(code: code),
                InkResponse(
                  onTap: () => _onTap(context),
                  child: Tooltip(
                    message: "Copy this snippet of code",
                    child: Icon(
                      AntDesign.copy1,
                      size: 20.0,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onTap(BuildContext context) {
    Clipboard.setData(
      ClipboardData(text: code),
    );
    _showSnackBar(context);
  }

  void _showSnackBar(BuildContext context) =>
      Scaffold.of(context).showSnackBar(SnackBar(
        action: SnackBarAction(label: 'Close', onPressed: () {}),
        content: Text('Copied!'),
      ));
}
