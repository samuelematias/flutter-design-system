import 'package:flutter/material.dart';

extension SelectableTextExtension on SelectableText {
  SelectableText h1({TextStyle style}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 20,
    );
    return SelectableText(data,
        key: key,
        maxLines: maxLines,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  SelectableText h2({TextStyle style}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 18,
    );
    return SelectableText(data,
        key: key,
        maxLines: maxLines,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  SelectableText h3({TextStyle style}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 16,
    );
    return SelectableText(data,
        key: key,
        maxLines: maxLines,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  SelectableText h4({TextStyle style}) {
    final TextStyle defaultStyle = TextStyle(
      fontSize: 14,
    );
    return SelectableText(data,
        key: key,
        maxLines: maxLines,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }
}
