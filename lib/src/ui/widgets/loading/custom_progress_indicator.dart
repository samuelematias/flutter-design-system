import 'package:flutter/material.dart';

class CustomProgressIndicator extends SizedBox {
  CustomProgressIndicator({
    double width = 30.0,
    double height = 30.0,
    double strokeWidth = 2.0,
    Color backgroundColor = Colors.deepPurple,
    Color valueColor = Colors.white,
  }) : super(
          child: CircularProgressIndicator(
            backgroundColor: backgroundColor,
            valueColor: AlwaysStoppedAnimation<Color>(valueColor),
            strokeWidth: strokeWidth,
          ),
          width: width,
          height: height,
        );
}
