import 'package:flutter/material.dart';

import 'tab_barr_widget.dart';

class TabBarr extends StatelessWidget {
  const TabBarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: myTabBar(context,
            title: 'Tab Bar View',
            leftIcon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            rightIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_sharp,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 28,
                    color: Colors.black,
                  ),
                ],
              ),
            )),
        body: TabBarView(
          children: [
            allNotification(),
            allNotification(),
          ],
        ),
      ),
    );
  }
}
