import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'secondPage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              child: Text('snackbar'),
              onPressed: () {
                Get.snackbar(
                  'title',
                  'message',
                  snackPosition: SnackPosition.TOP,
                  backgroundColor: Colors.green,
                );
              },
            ),
            RaisedButton(
              child: Text('show dialouge'),
              onPressed: () {
                Get.defaultDialog(
                  title: 'this is the title',
                  content: Text('this is the context which can be anything'),
                );
              },
            ),
            RaisedButton(
              child: Text('show bottom sheet'),
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 300,
                    child: Center(child: Text('bootom sheet child')),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              onPressed: () {
                Get.to(SecondPage());
              },
              child: Text('go to second page'),
            )
          ],
        ),
      ),
    );
  }
}
