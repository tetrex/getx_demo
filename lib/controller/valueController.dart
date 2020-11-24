import 'package:get/get.dart';
import 'package:getx_demo/model/valueModel.dart';

class ValueController extends GetxController {
  final valueModel = ValueModel().obs;

  updateTheValues(String newVal1, String newVal2) {
    valueModel.update(
      (modelVal) {
        modelVal.value1 = newVal1;
        modelVal.value2 = newVal2;
      },
    );
  }
}
