import 'package:flutter/material.dart';
import 'package:get/get.dart';

//工具类：值是否为空，是否是数字，是否是视频，图片，音频，ppt,word,apk,邮箱，手机号码，日期,md5,sha-1 等等
class GetxUtilsExample extends StatelessWidget {
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('utils工具'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: textFieldController,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text('判断是否是邮箱'),
                onPressed: () async {
                  if (GetUtils.isEmail(textFieldController.text)) {
                    Get.snackbar('正确', '恭喜你，完全正确',
                        backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar('邮箱错误', '请输入正确邮箱',
                        backgroundColor: Colors.pink);
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text('判断是否是邮箱'),
                onPressed: () async {
                  if (GetUtils.isPhoneNumber(textFieldController.text)) {
                    Get.snackbar('正确', '恭喜你，完全正确',
                        backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar('手机号错误', '请输入正确邮箱',
                        backgroundColor: Colors.pink);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
