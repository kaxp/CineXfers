import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
          body: Container(
              child: ListView.builder(
                  itemCount: controller.movieList.length,
                  itemBuilder: (context, index) {
                    return Text(controller.movieList[index].results![0].title
                        .toString());
                  })));
    });
  }
}
