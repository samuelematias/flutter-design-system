import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CopyText extends StatelessWidget {
  final String textCopied;
  final String textTooltip;

  const CopyText({
    @required this.textCopied,
    @required this.textTooltip,
  });

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () => _onTap(context),
      child: Tooltip(
        message: textTooltip,
        child: Icon(
          AntDesign.copy1,
          size: 20.0,
          color: Colors.white70,
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    Clipboard.setData(
      ClipboardData(text: textCopied),
    );
    _showSnackBar(context);
  }

  void _showSnackBar(BuildContext context) =>
      Scaffold.of(context).showSnackBar(SnackBar(
        action: SnackBarAction(label: 'Close', onPressed: () {}),
        content: Text('Copied!'),
      ));
}
