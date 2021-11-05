import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/app_routes.dart';

import 'package:get/route_manager.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  int? priority = 0;
  RouteAuthMiddleware({this.priority});

  @override
  RouteSettings? redirect(String? route) {
    //加入 authService
    Future.delayed(Duration(seconds: 1), () => Get.snackbar('提示', '请先登录app'));
    return RouteSettings(name: AppRoutes.Login);
  }
}
