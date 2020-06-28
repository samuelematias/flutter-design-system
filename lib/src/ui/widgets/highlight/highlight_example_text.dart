import 'package:designsystem/src/core/storage/storage.dart';
import 'package:designsystem/src/core/theme/theme.dart';
import 'package:designsystem/src/ui/widgets/highlight/types.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HLEXText extends StatelessWidget {
  final String text;
  final TypographyType typography;

  const HLEXText({
    @required this.text,
    this.typography = TypographyType.h1,
  });

  @override
  Widget build(BuildContext context) {
    switch (typography) {
      case TypographyType.h1:
        return SelectableText(text).h1(
          style: TextStyle(color: _handleColor(context)),
        );
        break;
      case TypographyType.h2:
        return SelectableText(text).h2(
          style: TextStyle(color: _handleColor(context)),
        );
        break;
      case TypographyType.h3:
        return SelectableText(text).h3(
          style: TextStyle(color: _handleColor(context)),
        );
        break;
      case TypographyType.h4:
        return SelectableText(text).h4(
          style: TextStyle(color: _handleColor(context)),
        );
        break;
      default:
        return SelectableText(text).h1(
          style: TextStyle(color: _handleColor(context)),
        );
    }
  }

  Color _handleColor(context) {
    final _settings = Provider.of<Settings>(context, listen: false);

    if (_settings.isDark) {
      return ColorPalette.atomOneDarkBg;
    } else {
      return ColorPalette.atomOneLightBg;
    }
  }
}
