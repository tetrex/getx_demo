import 'package:get/get.dart';

class CounterController extends GetxController {
  int count = 0;
  countIncrement() {
    count++;
    update();
  }
}
