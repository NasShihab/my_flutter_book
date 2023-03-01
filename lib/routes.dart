import 'package:flutter/material.dart';
import 'package:my_flutter_book/getx_slider/getx_slider.dart';
import 'package:my_flutter_book/home_page.dart';
import 'package:my_flutter_book/splash_screen/splash_screen_st.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => const HomePage(),
  '/splash_screen_st': (context) => const SplashScreenSt(),
  '/getx_slider': (context) => GetxSlider(),
};
