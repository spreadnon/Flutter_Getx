import 'package:flutter_getx/pages/obx/getx_binding/controller/binding_my_controller.dart';
import 'package:get/get.dart';

class BMyController extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BindingMyController>(() => BindingMyController());
  }
}
