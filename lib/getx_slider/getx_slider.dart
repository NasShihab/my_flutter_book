import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'controller.dart';

// get: ^4.6.5

class GetxSliders extends StatelessWidget {
  GetxSliders({super.key});

  final controller = ImgController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Test'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Slider',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  PageView.builder(
                    onPageChanged: controller.selectedIndex,
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Text(
                            controller.products[index].title.toString(),
                            style: const TextStyle(fontSize: 30),
                          ),
                          Image.asset(
                            controller.products[index].image,
                            height: 100,
                          )
                        ],
                      );
                    },
                  ),
                  Positioned(
                    bottom: 20,
                    left: MediaQuery.of(context).size.width * .4,
                    child: Wrap(
                      spacing: 10,
                      children:
                          List.generate(controller.products.length, (index) {
                        return Obx(() {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: controller.selectedIndex.value == index
                                      ? Colors.red
                                      : Colors.white,
                                  border: Border.all(color: Colors.black),
                                  shape: BoxShape.circle),
                            ),
                          );
                        });
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
