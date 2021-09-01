import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_fonts.dart';

class Header2 extends StatelessWidget {
  final String title;
  final Color? color;
  final double? height;
  final FontWeight fontWeight;
  final double? fontSize;
  final String? fontFamily;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow textOverflow;

  const Header2(
      {required this.title,
      this.color,
      this.height,
      this.maxLines,
      this.textAlign = TextAlign.start,
      this.fontWeight = FontWeight.w500,
      this.fontFamily,
      this.textOverflow = TextOverflow.visible,
      this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: textOverflow,
        style: Theme.of(context).textTheme.headline2?.copyWith(
            color: color ?? AppColors.blackColor,
            height: height,
            fontWeight: fontWeight,
            fontFamily: fontFamily ?? AppFonts.ratMedium,
            fontSize: fontSize));
  }
}
