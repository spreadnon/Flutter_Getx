import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/app_routes.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: ListTile(
        title: Text('返回首页'),
        subtitle: Text('我是登录页面，我是登录页面，我是登录页面，我是登录页面，'),
        onTap: () => Get.offAllNamed(AppRoutes.Home),
      ),
    );
  }
}
