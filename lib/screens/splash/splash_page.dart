import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/atoms/typography/header1.dart';
import '../../screens/splash/splash_controller.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AppImages.appLogo),
            ),
            SizedBox(
              height: 24,
            ),
            Header1(
              title: controller.appTitle.toString(),
              color: Colors.white,
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(width: 140, child: LinearProgressIndicator()),
          ],
        )),
      ),
    );
  }
}
