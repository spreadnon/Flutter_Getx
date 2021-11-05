import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObxCuetomClassExample extends StatelessWidget {
  // 1.使用Rx 实例化
  var teacher = Teacher();

  // 2.使用Rx 实例化
  // final teacher = Teacher(name: 'jeremy', age: 18).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('obx----自定义类'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  '我的名字是：${teacher.name.value}',
                  // '我的名字是：${teacher.value.name}',
                  style: TextStyle(color: Colors.red, fontSize: 30),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () =>
                  //1.使用Rx
                  {teacher.name.value = teacher.name.value.toUpperCase()},

              //2.使用Rx
              //     {
              //   teacher.update((val) {
              //     teacher.value.name = teacher.value.name.toUpperCase();
              //   })
              // },
              child: Text('转换大小写'),
            ),
          ],
        ),
      ),
    );
  }
}

class Teacher {
  //Rx 变量
  // var name = 'jeremy'.obs;
  // var age = 18.obs;

  // 构造函数变量
  var name;
  var age;
  Teacher({this.name, this.age});
}
