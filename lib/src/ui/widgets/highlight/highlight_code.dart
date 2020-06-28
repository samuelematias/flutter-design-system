import 'package:designsystem/src/core/storage/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';
import 'package:flutter_highlight/themes/atom-one-light.dart';
import 'package:provider/provider.dart';

class HighlightCode extends StatelessWidget {
  final String code;

  const HighlightCode({
    @required this.code,
  });

  @override
  Widget build(BuildContext context) {
    final _settings = Provider.of<Settings>(context, listen: false);

    return HighlightView(
      code,
      language: 'dart',
      theme: _settings.isDark ? atomOneLightTheme : atomOneDarkTheme,
      textStyle: TextStyle(fontSize: 16.0),
    );
  }
}
