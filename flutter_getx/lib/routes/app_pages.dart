import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/detail_view.dart';
import 'package:flutter_getx/pages/home_view.dart';
import 'package:flutter_getx/pages/login_view.dart';
import 'package:flutter_getx/pages/my_view.dart';
import 'package:flutter_getx/pages/notfound_view.dart';
import 'package:flutter_getx/pages/router_auth.dart';
import 'package:flutter_getx/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  static final List<GetPage> routes = [
    //白名单
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginView(),
    ),

    //我的，需要认证
    GetPage(
        name: AppRoutes.My,
        page: () => MyView(),
        middlewares: [RouteAuthMiddleware(priority: 1)]),

    GetPage(name: AppRoutes.Home, page: () => HomeView(), children: [
      GetPage(name: AppRoutes.Detail, page: () => DetailView()),
      GetPage(
        name: AppRoutes.Detail_ID,
        page: () => DetailView(),
        transition: Transition.downToUp,
      )
    ]),
  ];

  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => NotfoundView(),
  );
}
