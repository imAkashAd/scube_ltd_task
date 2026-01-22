import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/core/common/widgets/text_property.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/core/utils/constants/icon_path.dart';
import 'package:pacey_blacher/features/home_view/controller/degree_looping_controller.dart';
import 'package:pacey_blacher/features/home_view/controller/icon_looping_controller.dart';
import 'package:pacey_blacher/features/home_view/controller/temp_looping_controller.dart';

class TompShowContainer extends StatelessWidget {
  const TompShowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final iconController = Get.find<IconLoopingController>();
    final tempController = Get.find<TempLoopingController>();
    final degreeController = Get.find<DegreeLoopingController>();
    return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.grStartColor, AppColors.grEndColor],
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 15.w, 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(() {
                                return AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 500),
                                  switchInCurve: Curves.easeIn,
                                  switchOutCurve: Curves.easeOut,
                                  transitionBuilder: (child, animation) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                                  child: SizedBox(
                                    child: TextProperty(
                                      text: degreeController.currentIcon,
                                      key: ValueKey(degreeController.currentIcon),
                                      textColor: AppColors.defaultBackgroundColor,
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                );
                              }),
                              SizedBox(height: 8.h),
                              TextProperty(
                                text: 'Module \nTemperature',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                textColor: AppColors.hintTextColor,
                              ),
                            ],
                          ),
                          SizedBox(width: 28.w),
                          Obx(() {
                            return AnimatedSwitcher(
                              duration: const Duration(milliseconds: 500),
                              switchInCurve: Curves.easeIn,
                              switchOutCurve: Curves.easeOut,
                              transitionBuilder: (child, animation) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                              child: SizedBox(
                                child: Image.asset(
                                  tempController.currentIcon,
                                  key: ValueKey(tempController.currentIcon),
                                  height: 48.h,
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextProperty(
                            text: '26 MPH / NW',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            textColor: AppColors.whiteColor,
                          ),
                          TextProperty(
                            text: 'Wind Speed & Direction ',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.whiteColor,
                          ),
                          SizedBox(height: 2.h),
                          Center(child: Image.asset(IconPath.divider, height: 1)),
                          SizedBox(height: 2.h),
                          TextProperty(
                            text: '15.20 w/m²',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            textColor: AppColors.whiteColor,
                          ),
                          TextProperty(
                            text: 'Effective Irradiation',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.whiteColor,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Obx(() {
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          switchInCurve: Curves.easeIn,
                          switchOutCurve: Curves.easeOut,
                          transitionBuilder: (child, animation) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                          child: SizedBox(
                            child: Image.asset(
                              iconController.currentIcon,
                              key: ValueKey(iconController.currentIcon),
                              height: 48.h,
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              );
  }
}