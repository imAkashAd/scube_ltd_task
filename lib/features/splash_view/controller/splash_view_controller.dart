import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/features/auth_view/view/login_view.dart';

class SplashController extends GetxController
    with GetTickerProviderStateMixin {

  late AnimationController animationController;
  late AnimationController loginSlideController;

  late Animation<double> logoFade;
  late Animation<double> imageFade;
  late Animation<Offset> imageSlide;
  late Animation<Offset> loginSlide;

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );

    loginSlideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    logoFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.4, curve: Curves.easeIn),
      ),
    );

    imageFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.4, 1.0, curve: Curves.easeIn),
      ),
    );

    imageSlide = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.4, 1.0, curve: Curves.easeOut),
      ),
    );

    loginSlide = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: loginSlideController,
        curve: Curves.easeOut,
      ),
    );

    startSplash();
  }

  void startSplash() async {
    await animationController.forward();
    await Future.delayed(const Duration(milliseconds: 300));

    Get.bottomSheet(
      SlideTransition(
        position: loginSlide,
        child: const LoginView(),
      ),
      barrierColor: Colors.transparent,
      isDismissible: false,
      enableDrag: false,
      isScrollControlled: true,
    );

    loginSlideController.forward();
  }

  @override
  void onClose() {
    animationController.dispose();
    loginSlideController.dispose();
    super.onClose();
  }
}
