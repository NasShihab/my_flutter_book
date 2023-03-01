import 'package:flutter/material.dart';
import 'package:my_flutter_book/getx_slider/getx_slider.dart';
import 'package:my_flutter_book/rest_api_call/api_page.dart';
import 'package:my_flutter_book/splash_screen_stateful/splash_screen_st.dart';
import 'package:my_flutter_book/tab_bar_view/tab_barr.dart';
import 'package:my_flutter_book/z_other/navigation_page.dart';
import 'z_other/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 5),
          children: [
            homeButton(
              context,
              title: 'GetX Slider',
              pageName: GetxSliders(),
            ),
            homeButton(
              context,
              title: 'Rest API Call',
              pageName: const ApiPage(),
            ),
            homeButton(
              context,
              title: 'Splash Screen Stateful',
              pageName: const SplashScreenSt(),
            ),
            homeButton(
              context,
              title: 'Tab Bar View',
              pageName: const TabBarr(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget homeButton(
  BuildContext context, {
  required String title,
  required Widget pageName,
}) =>
    customButton(
      title: title,
      onPressed: () {
        myNavigationPush(context, pageName: pageName);
      },
    );
