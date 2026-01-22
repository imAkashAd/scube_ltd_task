import 'package:get/get.dart';

class CustomSwitchController extends GetxController {
  var enableHibru = false.obs;

  void toggleEnableHibru() {
    enableHibru.value = !enableHibru.value;
  }
}