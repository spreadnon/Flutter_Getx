import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorksControllerExample extends StatelessWidget {
  WorksController worksController = Get.put(WorksController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx --- 监听变量变化'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'count的值为：${worksController.count}',
                  style: TextStyle(color: Colors.red, fontSize: 30),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => {worksController.increment()},
              child: Text('点我加1'),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                onChanged: (val) {
                  worksController.increment();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WorksController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    //监听count的值，当它变化时调用
    // ever(count, (callback) => print('ever----$count'));

    //监听多个值，当它变化时调用
    // everAll([count], (callback) => print('everAll----$count'));

    //count值变化时调用，只执行一次
    // once(count, (callback) => print('once---$count'));

    //用户停止打字后1秒调用，防止ddos(较短的时间内发起大量请求，大规模消耗目标网站的主机资源，让它无法正常服务)
    // debounce(count, (callback) => print('debounce---$count'));

    //忽略3秒内的所有变动
    interval(count, (callback) => print('interval---$count'));

    super.onInit();
  }
}



//多个地方引用同一个属性，但我只想单独更新某一个地方，那么就可以使用UniqueID来区分。