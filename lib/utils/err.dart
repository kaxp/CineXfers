
import 'package:flutter/material.dart';

import 'app_colors.dart';

import 'custom_appBar.dart';
import 'custom_widget.dart';

class Err extends StatefulWidget {
  @override
  _ErrState createState() => _ErrState();
}

class _ErrState extends State<Err> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(minHeight: h),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('AppStrings.bg'), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            CustomAppBar(),
            CustomWidget.gradLine,
            Container(
              padding: EdgeInsets.only(bottom: 24),
              height: h - (28 + 68),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                    child: Text(
                      'Something went wrong',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'RatMedium'),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: InkWell(
                        splashColor: Theme.of(context).primaryColor,
                        onTap: () {},
                        child: Container(
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.circular(4)),
                            padding: const EdgeInsets.only(
                                top: 8.0, bottom: 8.0, left: 10.0, right: 10.0),
                            child: Text(
                              'Retry',
                              style: TextStyle(
                                color: AppColor.redText,
                                fontFamily: 'RatBold',
                              ),
                            ))),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
