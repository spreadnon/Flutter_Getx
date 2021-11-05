import 'package:flutter/material.dart';
import 'package:get/get.dart';

//更新国际化语言类
class MessagesController extends GetxController {
  void changeLabguage(String languageCode, String countryCode) {
    var locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}
