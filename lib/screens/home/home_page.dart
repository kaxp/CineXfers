import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';
import '../../components/molecules/app_bar/cine_appBar.dart';
import '../../components/molecules/loading_overlay/loading_overlay.dart';
import '../../components/organisms/movies_grid_view/movies_grid_view.dart';
import '../../components/organisms/drawer/cine_drawer.dart';
import '../../generated/l10n.dart';
import '../../utils/app_fonts.dart';
import '../../utils/app_images.dart';
import '../../utils/size_config.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        initState: (_) => SizeConfig.init(context),
        builder: (controller) {
          return Scaffold(
            appBar: CineAppBar(
              titleWidget: Row(
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
              isCenter: true,
              actionWidgets: [
                IconButton(
                    onPressed: () => controller.showSnackbar(),
                    icon: Icon(Icons.search))
              ],
            ),
            drawer: CineDrawer(),
            body: LoadingOverlay(
              isLoading: controller.isLoading,
              child: Container(
                constraints: BoxConstraints(
                    minHeight: SizeConfig.screenHeight!.toDouble()),
                child: MoviesGridView(
                  pagingController: controller.pagingController,
                  movies: controller.movieResult,
                  onCellTapped: (value) {
                    controller.navigateToDetailPage(value);
                  },
                ),
              ),
            ),
          );
        });
  }
}
