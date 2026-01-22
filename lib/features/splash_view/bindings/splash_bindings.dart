import 'package:get/get.dart';
import 'package:pacey_blacher/features/splash_view/controller/splash_view_controller.dart';

class SplashBindings extends Bindings{
  
  @override
  void dependencies(){
    Get.lazyPut<SplashController>(()=> SplashController());
  }
}