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
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Mentioned'),
              Tab(text: 'Detail'),
            ],
          ),
          title: const Text(
            'Tab Bar',
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
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
