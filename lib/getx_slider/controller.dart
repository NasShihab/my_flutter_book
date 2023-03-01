import 'package:get/get.dart';
import 'model.dart';

class ImgController extends GetxController {
  var selectedIndex = 0.obs;

  List<Products> products = [
    Products('assets/images/apple.png', 'Apple'),
    Products('assets/images/banana.png', 'Banana'),
    Products('assets/images/mango.png', 'Mango'),
    Products('assets/images/orange.png', 'Orange'),
  ];
}
