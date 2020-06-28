import 'package:designsystem/src/core/theme/theme.dart';
import 'package:designsystem/src/ui/widgets/loading/custom_progress_indicator.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final bool loading;
  final VoidCallback onPressed;
  final bool disabled;
  final bool isKeyboardVisible;

  const PrimaryButton({
    @required this.label,
    @required this.onPressed,
    this.loading = false,
    this.disabled = false,
    this.isKeyboardVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: !disabled && !loading ? onPressed : null,
      color: Colors.deepPurple,
      disabledColor: loading ? Colors.deepPurple : ColorPalette.grey50,
      shape: RoundedRectangleBorder(
        borderRadius: isKeyboardVisible
            ? BorderRadius.circular(0.0)
            : BorderRadius.circular(8.0),
      ),
      child: Container(
        height: 50.0,
        alignment: Alignment.center,
        child: loading
            ? CustomProgressIndicator()
            : Text(
                label,
                textAlign: TextAlign.center,
              ).h4(
                style: TextStyle(
                  color: disabled || onPressed == null
                      ? ColorPalette.grey200
                      : Colors.white,
                ),
              ),
      ),
    );
  }
}
