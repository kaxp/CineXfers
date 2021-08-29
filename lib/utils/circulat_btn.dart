import 'package:flutter/material.dart';

class CircularBtn extends StatelessWidget {
  final String? title;
  final onTap;
  final Color? borderColor;
  final Gradient? gradient;

  CircularBtn({this.title, this.onTap, this.gradient, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 3,
          primary: Colors.transparent,
          shape: CircleBorder(),
        ),
        onPressed: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              gradient: gradient,
              border: Border.all(color: borderColor!)),
          width: 68,
          height: 68,
          child: Center(
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'RatBold', fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
