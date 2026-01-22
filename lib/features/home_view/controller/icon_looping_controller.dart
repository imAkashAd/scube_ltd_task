import 'dart:async' show Timer;

import 'package:get/get.dart';

class IconLoopingController extends GetxController{
  final List<String> icons = [
    'assets/icons/sun.png',
    'assets/icons/cloud.png',
    'assets/icons/moon.png',
  ];

  final RxInt currentIndex = 0.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();

    _timer = Timer.periodic(Duration(seconds: 2), (_){
      currentIndex.value = (currentIndex.value + 1) % icons.length;
    });
  }

  String get currentIcon => icons[currentIndex.value];


  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}