import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/color_controller.dart';  
import 'widgets/color_slider.dart';         

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorControllerWidget(),
    );
  }
}

class ColorControllerWidget extends StatelessWidget {
  final ColorController controller = Get.put(ColorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter RGB Controller'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Color Controller', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Obx(() => ColorSlider('R', controller.red.value, (value) {
              controller.red.value = value;
            })),
            SizedBox(height: 20),
            Obx(() => ColorSlider('G', controller.green.value, (value) {
              controller.green.value = value;
            })),
            SizedBox(height: 20),
            Obx(() => ColorSlider('B', controller.blue.value, (value) {
              controller.blue.value = value;
            })),
            SizedBox(height: 20),
            Obx(() => Container(
              width: 100,
              height: 100,
              color: Color.fromRGBO(
                controller.red.value.toInt(),
                controller.green.value.toInt(),
                controller.blue.value.toInt(),
                1,
              ),
            )),
            SizedBox(height: 20),
            Obx(() => Text(
              'Hex Color: ${controller.getHexColor()}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
    );
  }
}
