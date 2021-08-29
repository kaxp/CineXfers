import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final onTap;
  final Gradient? gradient;
  final Color? borderColor;

  CustomBtn({this.title, this.onTap, this.gradient, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          gradient: gradient),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.transparent,
          // splashColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              side: BorderSide(color: borderColor!)),
        ),
        onPressed: onTap,
        child: Text(
          title!,
          style: TextStyle(
              color: Colors.white, fontFamily: 'RatBold', fontSize: 11),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
