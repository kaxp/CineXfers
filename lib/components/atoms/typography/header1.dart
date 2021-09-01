import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_fonts.dart';

class Header1 extends StatelessWidget {
  final String title;
  final Color? color;
  final double? height;
  final FontWeight fontWeight;
  final double fontSize;
  final String? fontFamily;
  final TextAlign textAlign;
  final int? maxLines;

  const Header1(
      {required this.title,
      this.color,
      this.height,
      this.fontFamily,
      this.maxLines,
      this.textAlign = TextAlign.start,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 32});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        style: Theme.of(context).textTheme.headline1?.copyWith(
            color: color ?? AppColors.blackColor,
            height: height,
            fontWeight: fontWeight,
            fontFamily: fontFamily ?? AppFonts.ratBold,
            fontSize: fontSize));
  }
}
