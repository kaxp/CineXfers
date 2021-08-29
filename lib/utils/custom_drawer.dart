import 'package:cine_xfers/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import 'custom_widget.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<String>? dList;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Container(
      width: w * .70,
      padding: EdgeInsets.only(bottom: 16),
      constraints: BoxConstraints(minHeight: h),
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.clear, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                CustomWidget.gradLine,
                SizedBox(
                  height: 16,
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: dList?.length ?? 0,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              _navTabs(i, context);
                            },
                            child: Container(
                              child: Text(
                                dList![i],
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.only(
                                  left: 16, top: 12, bottom: 12),
                              height: 50,
                              width: double.infinity,
                            ),
                          )
                        ],
                      );
                    }),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 16),
              width: 166,
              child: Image(
                image: AssetImage('AppStrings.logoH'),
              )),
        ],
      ),
    );
  }

  void _navTabs(int i, BuildContext context) {
    switch (dList![i]) {
      case "FILMS":
        Navigator.pop(context);

        break;
      case "CINEMAS":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case "PROFILE":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;

      case "BOOKING STATUS":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case "CONTACT":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;

      case "LOGIN":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case "LOG OUT":
        break;
      default:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
    }
  }
}
