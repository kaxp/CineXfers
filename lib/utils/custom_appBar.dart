import 'package:cine_xfers/screens/home/home_page.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          AppBar(
            iconTheme: new IconThemeData(color: Colors.white),
            elevation: 0,
            backgroundColor: Colors.black,
            centerTitle: true,
            title: GestureDetector(
                onTap: () {
                  Navigator.popUntil(context, ModalRoute.withName('/home'));
                },
                child: Image(
                  image: AssetImage("assets/images/logo_h.png"),
                  width: 156,
                  height: 84,
                )),
            actions: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0, left: 16),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Image(
                        image: AssetImage('AppStrings.logoSearch'),
                        height: 32,
                        width: 32,
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
