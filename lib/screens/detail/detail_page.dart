import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detail_controller.dart';
import '../../components/atoms/buttons/default_elevated_button.dart';
import '../../components/atoms/typography/header2.dart';
import '../../components/atoms/typography/header5.dart';
import '../../components/atoms/typography/header6.dart';
import '../../components/molecules/app_bar/cine_appBar.dart';
import '../../components/organisms/cards/detail_page_header.dart';
import '../../components/organisms/time_selection_list/time_selection_list.dart';
import '../../generated/l10n.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_fonts.dart';
import '../../utils/app_divider.dart';

class DetailPage extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(builder: (controller) {
      return Scaffold(
        appBar: CineAppBar(
          isCenter: false,
          titleWidget: Header5(
            title: controller.movieData.title.toString(),
            color: Colors.white,
            maxLines: 1,
            textOverflow: TextOverflow.ellipsis,
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DetailPageHeader(
                  imageUrl: controller.movieData.bannerPath.toString(),
                  data: controller.movieData,
                  onCalendarTap: () => controller.showSnackbar(),
                  onLocationTap: () => controller.showSnackbar(),
                  onTrailerTap: () => controller.showSnackbar(),
                ),
                AppDivider.divider,
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                  child: Header6(
                    title: S.current.about,
                    color: AppColors.redColor,
                    fontFamily: AppFonts.ratBold,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 20, top: 4),
                  child: Header2(
                      title: controller.movieData.overview.toString(),
                      maxLines: null,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                      fontFamily: AppFonts.ratMedium),
                ),
                AppDivider.divider,
                TimeSelectionList(
                  data: controller.movieData,
                  onButtonTapped: (childIndex, parentIndex) {
                    controller.updateTimeSelectionCellIndex(
                        childIndex, parentIndex);
                  },
                  childListIndex: controller.childListIndex,
                  parentListIndex: controller.parentListIndex,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
                  child: DefaultElevatedButton(
                    title: S.current.bookNow,
                    onPressed: controller.parentListIndex != -1
                        ? () => controller.showSnackbar()
                        : null,
                    primaryColor: controller.parentListIndex != -1
                        ? AppColors.redColor
                        : AppColors.disabledColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
