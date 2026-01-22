import 'package:get/get.dart';
import 'package:pacey_blacher/features/home_view/controller/degree_looping_controller.dart';
import 'package:pacey_blacher/features/home_view/controller/icon_looping_controller.dart';
import 'package:pacey_blacher/features/home_view/controller/temp_looping_controller.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<IconLoopingController>(() => IconLoopingController());
    Get.lazyPut<TempLoopingController>(() => TempLoopingController());
    Get.lazyPut<DegreeLoopingController>(() => DegreeLoopingController());
  }
}