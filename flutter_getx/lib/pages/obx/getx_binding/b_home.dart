import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/obx/getx_binding/controller/binding_home_controller.dart';
import 'package:get/get.dart';

class BHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('get---绑定'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  '计数器值为：${Get.find<BindingHomeController>().count}}',
                  // '我的名字是：${teacher.value.name}',
                  style: TextStyle(color: Colors.red, fontSize: 30),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () =>
                  //1.使用Rx
                  {Get.find<BindingHomeController>().increment()},

              //2.使用Rx
              //     {
              //   teacher.update((val) {
              //     teacher.value.name = teacher.value.name.toUpperCase();
              //   })
              // },
              child: Text('点击+1'),
            ),
          ],
        ),
      ),
    );
  }
}
