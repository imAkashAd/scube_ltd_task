import 'package:get/get.dart';

class SecondTabbarWidgetController extends GetxController {
  var selectedTabIndex = 0.obs;

  var selectedTabs = ['Source', 'Load',].obs;

  void selectTab(int index) {
    selectedTabIndex.value = index;
  }
}