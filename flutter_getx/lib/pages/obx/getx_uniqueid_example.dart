import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class UniqueIDControllerExample extends StatelessWidget {
  CountController countController = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx --- 监听变量变化'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<CountController>(builder: (controller) {
              return Text(
                '计数器值为：${controller.count}',
                style: TextStyle(color: Colors.red, fontSize: 30),
              );
            }),
            GetBuilder<CountController>(
                id: 'jeremy_count',
                builder: (controller) {
                  return Text(
                    '计数器值为：${controller.count}',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  );
                }),
            // Obx(() => Text(
            //       'count的值为：${countController.count}',
            //       style: TextStyle(color: Colors.red, fontSize: 30),
            //     )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => {countController.increment()},
              child: Text('点我加1'),
            ),
          ],
        ),
      ),
    );
  }
}

class CountController extends GetxController {
  var count = 0; //.obs;
  void increment() {
    count++;
    update(['jeremy_count']);
  }
}
