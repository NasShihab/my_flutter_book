import 'package:flutter/material.dart';
import 'custom_button.dart';

//// get: ^4.6.5

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            customButton(
              title: 'Splash Screen Stateful',
              onPressed: () {
                Navigator.pushNamed(context, '/splash_screen_st');
              },
            ),
            customButton(
              title: 'GetX Slider',
              onPressed: () {
                Navigator.pushNamed(context, '/getx_slider');
              },
            ),
          ],
        ),
      ),
    );
  }
}
