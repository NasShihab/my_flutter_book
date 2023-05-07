import 'package:flutter/material.dart';
import 'package:my_flutter_book/data_page.dart';
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
          children: [
            Center(
              child: Wrap(
                children: List.generate(
                  pageData.length,
                  (index) => Column(
                    children: [
                      homeButton(
                        context,
                        title: pageData[index].title,
                        pageName: pageData[index].pageName.toString(),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget homeButton(
  BuildContext context, {
  required String title,
  required String pageName,
}) =>
    customButton(
      width: MediaQuery.of(context).size.height * .9,
      title: title,
      onPressed: () {
        // myNavigationPush(context, pageName: pageName);
        Navigator.pushNamed(context, pageName);
      },
    );
