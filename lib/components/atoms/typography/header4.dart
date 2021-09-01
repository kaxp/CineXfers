import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_fonts.dart';

class Header4 extends StatelessWidget {
  final String title;
  final Color? color;
  final double? height;
  final FontWeight fontWeight;
  final double fontSize;
  final String? fontFamily;
  final TextAlign textAlign;
  final int? maxLines;
  final TextDecoration decoration;
  final FontStyle? fontStyle;
  final TextOverflow? textOverflow;

  const Header4({
    required this.title,
    this.color,
    this.height,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.fontWeight = FontWeight.normal,
    this.decoration = TextDecoration.none,
    this.fontFamily,
    this.fontSize = 12,
    this.fontStyle = FontStyle.normal,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: textOverflow,
        style: Theme.of(context).textTheme.headline4?.copyWith(
            color: color ?? AppColors.blackColor,
            height: height,
            fontWeight: fontWeight,
            decoration: decoration,
            fontStyle: fontStyle,
            fontFamily: fontFamily ?? AppFonts.ratMedium,
            fontSize: fontSize));
  }
}
