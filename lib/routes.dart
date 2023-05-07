import 'package:flutter/material.dart';
import 'package:my_flutter_book/getx_slider/getx_slider.dart';
import 'package:my_flutter_book/home_page.dart';
import 'package:my_flutter_book/rest_api_call/api_page.dart';
import 'package:my_flutter_book/splash_screen_stateful/splash_screen_st.dart';
import 'package:my_flutter_book/tab_bar_view/tab_barr.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomePage(),
  '/splash_screen_st': (context) => const SplashScreenSt(),
  '/getx_slider': (context) => GetxSliders(),
  '/api_page': (context) => const ApiPage(),
  '/tabbarr': (context) => const TabBarr(),
};
