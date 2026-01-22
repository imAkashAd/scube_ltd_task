import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/core/common/widgets/text_property.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/core/utils/constants/image_path.dart';
import 'package:pacey_blacher/features/splash_view/controller/splash_view_controller.dart';

class SplashView extends StatelessWidget {
  final controller = Get.find<SplashController>();

  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackgroundColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 80.h, 16, 16),
        child: FadeTransition(
          opacity: controller.logoFade,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImagePath.scubelogo, height: 98.h),
                SizedBox(height: 14.h),
                TextProperty(
                  text: 'SCUBE',
                  textColor: AppColors.whiteColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 14.h),
                TextProperty(
                  text: 'Control & Monitoring System',
                  textColor: AppColors.whiteColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
