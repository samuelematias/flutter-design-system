import 'package:flutter/material.dart';

class CustomRadio<T> extends StatelessWidget {
  CustomRadio({
    @required this.value,
    @required this.onChanged,
    @required this.groupValue,
    this.width = 24,
    this.height = 24,
    this.widthBorder = 6,
  });

  final T value;
  final ValueChanged<T> onChanged;
  final T groupValue;
  final double width, height, widthBorder;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = groupValue == value;

    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        width: width,
        height: height,
        decoration: isSelected
            ? BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.deepPurple,
                  width: widthBorder,
                ),
              )
            : BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
      ),
    );
  }
}
