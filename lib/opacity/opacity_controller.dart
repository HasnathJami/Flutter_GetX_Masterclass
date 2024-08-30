import 'package:get/get.dart';

class OpacityController extends GetxController {
  final RxDouble opacity = 0.5.obs;

  void setOpacity(double value) {
    opacity.value = value;
  }

  double getOpacity() => opacity.value;
}
