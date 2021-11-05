import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/obx/getx_binding/b_home.dart';
import 'package:flutter_getx/pages/obx/getx_binding/binding/b_home_controller_binding.dart';
import 'package:flutter_getx/pages/obx/getx_binding/controller/binding_home_controller.dart';
import 'package:flutter_getx/pages/obx/getx_binding/controller/binding_my_controller.dart';
import 'package:get/get.dart';

class BindingExample extends StatelessWidget {
  const BindingExample({Key? key}) : super(key: key);

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
                  '计数器值为：${Get.find<BindingMyController>().count}}',
                  // '我的名字是：${teacher.value.name}',
                  style: TextStyle(color: Colors.red, fontSize: 30),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () =>
                  //1.使用Rx
                  {Get.find<BindingMyController>().increment()},

              //2.使用Rx
              //     {
              //   teacher.update((val) {
              //     teacher.value.name = teacher.value.name.toUpperCase();
              //   })
              // },
              child: Text('点击+1'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () =>
                  //1.使用Rx
                  {Get.to(BHome(), binding: BHomeController())},

              //2.使用Rx
              //     {
              //   teacher.update((val) {
              //     teacher.value.name = teacher.value.name.toUpperCase();
              //   })
              // },
              child: Text('点击去首页'),
            ),
          ],
        ),
      ),
    );
  }
}
