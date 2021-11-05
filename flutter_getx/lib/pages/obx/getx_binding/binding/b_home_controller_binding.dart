import 'package:flutter_getx/pages/obx/getx_binding/controller/binding_home_controller.dart';
import 'package:get/get.dart';

class BHomeController extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BindingHomeController>(() => BindingHomeController());
  }
}
