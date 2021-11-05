import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ObxCountExample extends StatelessWidget {
/**
 * //定义Obx变量的三种方式

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
 */

  //第一种
  // RxInt count = RxInt(0);
  //第二种
  // var count = Rx<double>(0);
  //第三种
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('obx----计算器'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'count的值为：$count',
                  style: TextStyle(color: Colors.red, fontSize: 30),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => {increment()},
              child: Text('点我加1'),
            ),
          ],
        ),
      ),
    );
  }
}
