import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  // PATH

  // STRING
  static const String word1 = "Hızlı Servis FooGO’da!";
  static const String word2 =
      "Verdiğiniz sipariş dakikalar sonra \n kapınızda FooGO ile hazır!";
  static const String word3 = "Henüz FooGO’ ya üye değilsen";
  static const String word4 = "Henüz FooGO’ da mağazan yoksa";

  // COLOR
  static const Color PRIMARY_COLOR = Color.fromRGBO(45, 49, 172, 1);
  static const Color SECONDARY_COLOR = Color.fromRGBO(254, 170, 71, 100);
  static const Color TEXT_COLOR = Color(0x80000000);
  static const Color SHADOW = Color(0x50000000);
  static const Color WHITE = Colors.white;
  static const Color BLACK = Colors.black;
  static const Color TEXT_COLOR_OPACITY = Color.fromRGBO(192, 192, 192, 100);
  static const Color CLICK_COLOR = Color.fromRGBO(254, 170, 71, 30);
  static const Color TEXTFIELD_COLOR = Color.fromRGBO(156, 166, 186, 100);

  // UI COLOR RANDOM LIST

  static const Color ORANGE = Color.fromRGBO(255, 190, 132, 1);
  static const Color RED = Color.fromRGBO(255, 144, 143, 1);
  static const Color CYAN = Color.fromRGBO(65, 218, 252, 1);
  static const Color PURPLE = Color.fromRGBO(223, 135, 255, 1);
  static const Color PINK = Color.fromRGBO(254, 138, 191, 1);
  static const Color BLUE = Color.fromRGBO(120, 155, 255, 1);

  // SPACE
  static dynamicHeight(double height) => ScreenUtil.instance.setHeight(height);
  static dynamicWidth(double width) => ScreenUtil.instance.setWidth(width);
  static dynamicSp(double fontsize) => ScreenUtil.instance.setSp(fontsize);

  // FOR MARGIN OR PADDING
  static const double Space0 = 0;
  static const double Space5 = 5;
  static const double Space10 = 10;
  static const double Space14 = 14;
  static const double Space15 = 15;
  static const double Space20 = 20;
  static const double Space25 = 25;
  static const double Space30 = 30;
  static const double Space35 = 35;
  static const double Space40 = 40;
  static const double Space50 = 50;
  static const double Space75 = 75;
  static const double Space80 = 80;
  static const double Space100 = 100;
  static const double Space200 = 200;
  static const double Space250 = 250;
  static const double Space300 = 300;
  static const double Space500 = 500;
}
