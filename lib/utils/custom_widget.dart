import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomWidget{
  static Widget gradLine = Card(
    margin: EdgeInsets.all(0.0),
    elevation: 2,
    child: Container(
      height: 1,
      decoration: BoxDecoration( gradient: LinearGradient(colors: AppColor.appGradient)),
    ),
  );

}