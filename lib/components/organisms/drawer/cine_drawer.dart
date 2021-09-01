import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cine_drawer_controller.dart';
import '../../../components/atoms/typography/header3.dart';
import '../../../generated/l10n.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_divider.dart';
import '../../../utils/app_fonts.dart';
import '../../../utils/app_images.dart';
import '../../../utils/size_config.dart';

class CineDrawer extends GetView<CineDrawerController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * .70,
      padding: EdgeInsets.only(bottom: 16, top: 16),
      constraints:
          BoxConstraints(minHeight: SizeConfig.screenHeight!.toDouble()),
      color: AppColors.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(S.current.hey,
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontFamily: AppFonts.ratBold)),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.clear, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                AppDivider.divider,
                SizedBox(
                  height: 16,
                ),
                ListView.builder(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.drawerList?.length ?? 0,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return TextButton(
                        onPressed: () => controller.tabItemNavigation(index),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Header3(
                              title: controller.drawerList![index],
                              color: Colors.white,
                            ),
                            Spacer()
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        width: 32,
                        child: Image(
                          image: AssetImage(AppImages.appLogo),
                        )),
                    SizedBox(width: 8),
                    Text(S.current.cineXfers,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: AppFonts.ratMedium))
                  ],
                ),
                SizedBox(height: 16),
                Text('App Version: 1.0.0',
                    style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontFamily: AppFonts.ratRegular)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
