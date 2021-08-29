import 'package:cine_xfers/routes/pages.dart';
import 'package:cine_xfers/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cine Xfers',
      initialRoute: Routes.home,
      getPages: Pages.pages,
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
