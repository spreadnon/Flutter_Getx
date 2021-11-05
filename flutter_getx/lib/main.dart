import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/navgiation_for_name_example.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/pages/my_view.dart';
import 'package:flutter_getx/pages/nav_example.dart';
import 'package:flutter_getx/pages/notfound_view.dart';
import 'package:flutter_getx/pages/obx/getx_binding/all_binding.dart';
import 'package:flutter_getx/pages/obx/getx_binding/getx_binding_example.dart';
import 'package:flutter_getx/pages/obx/getx_uniqueid_example.dart';
import 'package:flutter_getx/pages/obx/getx_controller.dart';
import 'package:flutter_getx/pages/obx/getx_utils.dart';
import 'package:flutter_getx/pages/obx/getx_works_example.dart';
import 'package:flutter_getx/pages/obx/international/international_controller.dart';
import 'package:flutter_getx/pages/obx/international/meeeages.dart';
import 'package:flutter_getx/pages/obx/obx_count_example.dart';
import 'package:flutter_getx/pages/obx/obx_count_example.dart';
import 'package:flutter_getx/pages/obx/obx_custom_class_example.dart';
import 'package:flutter_getx/routes/app_pages.dart';
import 'package:flutter_getx/services/global_config.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  // ignore: avoid_print
  print('starting services...');
  await Get.putAsync(() => GlobalConfigService().init());
  print('all services started...');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx',
      translations: Messages(), //transiations //国际化配置文件
      locale: Locale('zh', 'CN'), //locale //默认语言，不设置的话为系统语言
      fallbackLocale: Locale('zh', 'CN'), //fallbackLocale // 配置错误的情况下，使用的语言
      initialBinding: AllControllerBinding(),
      home:
          GetxUtilsExample(), //BindingExample(), //InternationalController(), //UniqueIDControllerExample(), //WorksControllerExample(), //GetxControllerExample(), //ObxCuetomClassExample(), //ObxCountExample(), //NavgiationExample(),
    );

    // return GetMaterialApp(
    //   title: 'Getx',
    //   initialRoute: '/',
    //   defaultTransition: Transition.zoom,
    //   getPages: [
    //     GetPage(name: '/', page: () => MyApp()),
    //     GetPage(name: '/home', page: () => Home()),
    //     GetPage(
    //         name: '/my',
    //         page: () => MyView(),
    //         transition: Transition.rightToLeft),
    //   ],
    //   // home: NavgiationForNameExample(),
    // );
  }
}
