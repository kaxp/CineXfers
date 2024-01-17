import 'package:flutter/material.dart';

import '../../../utils/app_fonts.dart';

class Button extends StatelessWidget {
  final String title;
  final Color? color;
  final double? height;
  final FontWeight fontWeight;
  final double? fontSize;
  final String? fontFamily;
  final TextAlign textAlign;
  final int? maxLines;

  const Button(
      {required this.title,
      this.color,
      this.height,
      this.maxLines,
      this.textAlign = TextAlign.center,
      this.fontWeight = FontWeight.w600,
      this.fontFamily,
      this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: color ?? Colors.white,
            height: height,
            fontWeight: fontWeight,
            fontFamily: fontFamily ?? AppFonts.ratMedium,
            fontSize: fontSize));
  }
}
