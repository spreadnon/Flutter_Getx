import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/app_routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class MyView extends StatelessWidget {
  const MyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: ListTile(
        title: Text('返回首页'),
        subtitle: Text('我的界面 我的界面 我的界面 我的界面 我的界面 我的界面'),
        onTap: () => Get.offAllNamed(AppRoutes.Home),
      ),
    );
  }
}
