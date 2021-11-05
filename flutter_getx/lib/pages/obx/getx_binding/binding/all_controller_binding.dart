import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/obx/getx_binding/controller/binding_home_controller.dart';
import 'package:flutter_getx/pages/obx/getx_binding/controller/binding_my_controller.dart';
import 'package:get/get.dart';

class AllControllerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BindingMyController>(() => BindingMyController());
    Get.lazyPut<BindingHomeController>(() => BindingHomeController());
  }
}
