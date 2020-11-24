import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/conterController.dart';
import 'package:getx_demo/view/homepage.dart';
import 'package:getx_demo/view/thirdPage.dart';

class SecondPage extends StatelessWidget {
  // CounterController counterChangeController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('secondPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              child: Text('go to home page'),
              onPressed: () => Get.offAll(Homepage()),
            ),
            GetBuilder<CounterController>(
                init: CounterController(),
                builder: (counterChangeController) {
                  return Text('the count is ${counterChangeController.count}');
                }),
            RaisedButton(
              child: Text('increase counter'),
              onPressed: () => Get.find<CounterController>().countIncrement(),
            ),
            RaisedButton(
              child: Text('go to third page'),
              onPressed: () {
                Get.to(ThirdPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
