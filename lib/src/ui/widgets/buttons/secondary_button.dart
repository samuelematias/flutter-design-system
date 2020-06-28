import 'package:designsystem/src/core/storage/storage.dart';
import 'package:designsystem/src/core/theme/theme.dart';
import 'package:designsystem/src/ui/widgets/loading/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondaryButton extends StatelessWidget {
  final String label;
  final bool loading;
  final VoidCallback onPressed;
  final bool disabled;
  final bool isKeyboardVisible;
  final String iconLeft;
  final bool showIconLeft;

  const SecondaryButton({
    @required this.label,
    @required this.onPressed,
    this.loading = false,
    this.disabled = false,
    this.isKeyboardVisible = false,
    this.iconLeft,
    this.showIconLeft = false,
  });

  @override
  Widget build(BuildContext context) {
    final _settings = Provider.of<Settings>(context, listen: false);

    return OutlineButton(
      borderSide: BorderSide(color: Colors.deepPurple, width: 2),
      highlightedBorderColor: Colors.deepPurple,
      disabledBorderColor: loading ? Colors.deepPurple : ColorPalette.grey100,
      onPressed: !disabled && !loading ? onPressed : null,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: isKeyboardVisible
            ? BorderRadius.circular(0.0)
            : BorderRadius.circular(8.0),
      ),
      child: Container(
        height: 50.0,
        alignment: Alignment.center,
        child: loading
            ? CustomProgressIndicator(
                backgroundColor:
                    _settings.isDark ? Color(0xFF303030) : Colors.white,
                valueColor: Colors.deepPurple,
              )
            : Text(
                label,
                textAlign: TextAlign.center,
              ).h4(
                style: TextStyle(
                  color: disabled || onPressed == null
                      ? ColorPalette.grey200
                      : Colors.deepPurple,
                ),
              ),
      ),
    );
  }
}
