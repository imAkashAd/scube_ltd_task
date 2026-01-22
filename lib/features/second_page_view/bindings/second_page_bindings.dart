import 'package:get/get.dart';
import 'package:pacey_blacher/core/common/controllers/custom_tabbar_widget_controller.dart';
import 'package:pacey_blacher/features/second_page_view/controller/second_tabbar_widget_controller.dart';

class SecondPageBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CustomTabbarWidgetController>(() => CustomTabbarWidgetController());
    Get.lazyPut<SecondTabbarWidgetController>(() => SecondTabbarWidgetController());
  }
}