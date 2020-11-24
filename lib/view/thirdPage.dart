import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/valueController.dart';
import 'package:getx_demo/view/homepage.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GetX<ValueController>(
              init: ValueController(),
              builder: (getxController) {
                return Text(
                    'the first value is : ${getxController.valueModel.value.value1}');
              },
            ),
            Obx(
              () => Text(
                  'the first value is : ${Get.find<ValueController>().valueModel.value.value2}'),
            ),
            RaisedButton(
              child: Text('change value'),
              onPressed: () {
                Get.find<ValueController>().updateTheValues('444', '666');
              },
            ),
            RaisedButton(
              child: Text('go to home page'),
              onPressed: () {
                Get.offAll(Homepage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
