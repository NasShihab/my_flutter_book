import 'package:flutter/material.dart';

import 'tab_barr_widget.dart';

class TabBarr extends StatelessWidget {
  const TabBarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
              labelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Mentioned'),
                Tab(text: 'Detail'),
              ]),
          backgroundColor: Colors.transparent,
          title: const FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Tab Bar',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            myTabView(),
            myTabView(),
            myTabView(),
          ],
        ),
      ),
    );
  }
}
