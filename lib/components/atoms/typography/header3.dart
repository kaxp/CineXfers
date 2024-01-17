import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_fonts.dart';

class Header3 extends StatelessWidget {
  final String title;
  final Color? color;
  final double? height;
  final FontWeight fontWeight;
  final double fontSize;
  final String? fontFamily;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;

  const Header3(
      {required this.title,
      this.color,
      this.height,
      this.maxLines,
      this.overflow,
      this.decoration,
      this.textAlign = TextAlign.start,
      this.fontWeight = FontWeight.w500,
      this.fontFamily,
      this.fontSize = 14});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: color ?? AppColors.blackColor,
            height: height,
            fontWeight: fontWeight,
            decoration: decoration,
            fontFamily: fontFamily ?? AppFonts.ratMedium,
            fontSize: fontSize));
  }
}
