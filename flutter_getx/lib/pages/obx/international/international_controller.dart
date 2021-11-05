import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/obx/international/message_controller.dart';
import 'package:get/get.dart';

class InternationalController extends StatelessWidget {
  MessagesController messageController = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('国际化设置'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => {messageController.changeLabguage('zh', 'CN')},
              child: Text('切换中文'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => {messageController.changeLabguage('en', 'US')},
              child: Text('切换英文'),
            ),
          ],
        ),
      ),
    );
  }
}
