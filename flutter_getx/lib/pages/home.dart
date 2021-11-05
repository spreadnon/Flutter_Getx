import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  //定义Obx变量的三种方式

  //第一种 使用Rx{type}
  // final name = RxString('');
  // final isLogged = RxBool(false);
  // final count = RxInt(0);
  // final balance = RxDouble(0.0);
  // final items = RxList<String>([]);
  // final myMap = RxMap<String, int>({});

  //第二种 使用Rx,规定泛型Rx<type>
  // final name = Rx<String>('');
  // final isLogged = Rx<bool>(false);
  // final count = Rx<int>(0);
  // final balance = Rx<double>(0.0);
  // final items = Rx<List<String>>([]);
  // final myMap = Rx<Map<String, int>>({});
  // //自定义类型 = 可以是任何类
  // final user = Rx<User>();

  //第三种 使用 .obs 作为value的属性
  final name = ''.obs;
  final isLogged = false.obs;
  final count = 0.obs;
  final balance = 0.0.obs;
  final items = <String>[].obs;
  final myMap = <String, int>{}.obs;
  //自定义类型 = 可以是任何类
  final user = User().obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Nav'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Get.arguments ?? "没有传入的参数"),
            ElevatedButton(
              onPressed: () => {
                //返回不带参数
                // Get.back(),

                //返回带参数
                Get.back(result: '123456')
              },
              child: Text("返回首页"),
            ),
          ],
        ),
      ),
    );
  }
}

class User {}
