import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/obx/obx_custom_class_example.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class GetxControllerExample extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetxController'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //第一种
            // Obx(() => Text(
            //       '我的名字是${myController.teacher.name}',
            //       style: TextStyle(color: Colors.red, fontSize: 30),
            //     )),

            //第二种
            GetX<MyController>(
              init: MyController(),
              builder: (controller) {
                return Text(
                  '我的名字是：${controller.teacher.value.name}',
                  style: TextStyle(color: Colors.green, fontSize: 30),
                );
              },
            ),

            //第三种
            // GetBuilder<MyController>(
            //     init: myController,
            //     builder: (controller) {
            //       return Text(
            //         '我的名字是：${controller.teacher.value.name}',
            //         style: TextStyle(color: Colors.green, fontSize: 30),
            //       );
            //     }),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: () => {
                //第一种
                //myController.converToUpperCase()

                //第二种
                Get.find<MyController>().converToUpperCase()
              },
              child: const Text('转换大小写'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  //第一种
  // var teacher = Teacher();
  // void converToUpperCase() {
  //   teacher.name.value = teacher.name.value.toUpperCase();
  // }

  //第二种
  var teacher = Teacher(name: 'jeremy', age: 18).obs;
  void converToUpperCase() {
    teacher.update((val) {
      teacher.value.name = teacher.value.name.toUpperCase();
    });
  }

  //第三种
  // var teacher = Teacher();
  // void converToUpperCase() {
  //   teacher.name.value = teacher.name.value.toUpperCase();
  //   update();
  // }
}
