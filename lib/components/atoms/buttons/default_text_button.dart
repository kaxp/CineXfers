import 'package:flutter/material.dart';

import '../../../utils/app_fonts.dart';

class DefaultTextButton extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final onTap;

  DefaultTextButton({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      onPressed: onTap,
      child: Text(
        title!,
        style: TextStyle(color: Colors.white, fontFamily: AppFonts.ratBold, fontSize: 11),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
