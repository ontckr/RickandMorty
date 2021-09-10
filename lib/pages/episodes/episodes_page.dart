import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'episodes_controller.dart';

class EpisodesPage extends GetView<EpisodesController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text("Counter ${controller.counter.value}")),
            ElevatedButton(
              child: Text("Increase"),
              onPressed: () => controller.increaseCounter(),
            )
          ],
        ),
      ),
    );
  }
}
