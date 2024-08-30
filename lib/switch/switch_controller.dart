import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool isSwitchOn = false.obs;

  setSwitchValue(bool value) {
    isSwitchOn.value = value;
  }

  getSwitchValue() {
    return isSwitchOn.value;
  }
}
