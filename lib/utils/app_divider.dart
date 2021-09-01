import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppDivider {
  static Widget divider = Card(
    margin: EdgeInsets.all(0.0),
    elevation: 2,
    child: Container(height: 1, color: AppColors.redColor),
  );
}
