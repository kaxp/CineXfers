import 'package:flutter/material.dart';

import '../../../components/atoms/typography/header2.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_fonts.dart';

class DefaultElevatedButton extends StatelessWidget
    implements PreferredSizeWidget {
  final String? title;
  final Function? onPressed;
  final Color? primaryColor;

  DefaultElevatedButton({this.title, this.onPressed, this.primaryColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor ?? AppColors.redColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        onPressed: () => onPressed!(),
        child: Header2(
          title: title!,
          fontFamily: AppFonts.ratBold,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
