import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/pages/home_view.dart';
import 'package:get/get.dart';

class NavgiationExample extends StatelessWidget {
  const NavgiationExample({Key? key}) : super(key: key);

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
            ElevatedButton(
                onPressed: () async {
                  //路由跳转
                  //Get.to(Home());

                  //基本使用 + 动画
                  // Get.to(
                  //   Home(),
                  //   fullscreenDialog: true,
                  //   transition: Transition.rightToLeft,
                  //   duration: Duration(milliseconds: 2000),
                  //   curve: Curves.easeInOut,
                  // );

                  //传递参数给下一个界面
                  // Get.to(
                  //   Home(),
                  //   arguments: 'hello world',
                  // );

                  // 接收上一个页面的数据
                  var data = await Get.to(Home(), arguments: 'hello jeremy');
                  print('接收到的数据 $data');
                },
                child: Text('跳转到首页'))
          ],
        ),
      ),
    );
  }
}
