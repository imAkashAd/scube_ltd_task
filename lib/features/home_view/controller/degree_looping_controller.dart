import 'dart:async' show Timer;

import 'package:get/get.dart';

class DegreeLoopingController extends GetxController{
  final List<String> text = [
    '30°C',
    '17°C',
    '19°C',
  ];

  final RxInt currentIndex = 0.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();

    _timer = Timer.periodic(Duration(seconds: 2), (_){
      currentIndex.value = (currentIndex.value + 1) % text.length;
    });
  }

  String get currentIcon => text[currentIndex.value];

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}