import 'package:flutter/material.dart';

class AppColor{

static List<Color> appGradient= [Color(0xfffd40ff),
  Color(0xff3bfedc)];

static List<Color> greyGrad= [Color(0xff666666),
  Color(0xff666666)];

static List<Color> whiteGrad= [Color(0xffffffff),
  Color(0xffffffff)];

static Color pinkText = Color(0xfffd40ff);
//static Color pinkText = Color(0xffe88efc);

static Shader gradText = LinearGradient(
  colors: <Color>[
    Color(0xfffd40ff),
    Color(0xff3bfedc)
  ],
).createShader(Rect.fromLTWH(110.0, 0.0, 200.0, 70.0));

static Shader whiteText = LinearGradient(
  colors: <Color>[
    Color(0xff666666),
    Color(0xff666666)
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));


static Color redText = Color(0xffCC202E);
static Color blueBorder =  Color(0xff3bfedc);
static Color greyBorder =  Color(0xffE0E0E0);
static Color darkGreyBorder =  Color(0xff424242);
static Color redBackground = Color(0xffCF1F2E);
static Color greenBackground = Color(0xff87C03F);
static Color peachBackground = Color(0xffE78785);
static Color greyBackground = Color(0xffe6e6e6);
static Color backBtnBg = Color(0xffb5b7b9);
static Color ember = Color(0xffF7931E);
static Color darkRed = Color(0xff810C13);

}