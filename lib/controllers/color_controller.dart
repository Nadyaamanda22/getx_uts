import 'package:get/get.dart';

class ColorController extends GetxController {
  var red = 125.0.obs;
  var green = 125.0.obs;
  var blue = 125.0.obs;

  String getHexColor() {
    int r = red.value.toInt();
    int g = green.value.toInt();
    int b = blue.value.toInt();
    return '#${r.toRadixString(16).padLeft(2, '0')}${g.toRadixString(16).padLeft(2, '0')}${b.toRadixString(16).padLeft(2, '0')}'.toUpperCase();
  }
}
