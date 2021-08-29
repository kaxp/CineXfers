import 'package:cine_xfers/screens/home/home_page.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigatePage();
  }

  void navigatePage() {
    Future.delayed(Duration(seconds: 5), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg1.png'), fit: BoxFit.cover)),
        child: Center(
            child: Image(
          image: AssetImage("assets/images/logo_v.png"),
          width: 300,
        )),
      ),
    );
  }
}
