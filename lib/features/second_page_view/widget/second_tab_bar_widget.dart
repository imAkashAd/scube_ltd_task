import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/core/common/widgets/text_property.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/features/second_page_view/controller/second_tabbar_widget_controller.dart';

class SecondTabBarWidget extends StatelessWidget {
  const SecondTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SecondTabbarWidgetController>();

    return Obx(() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.tabBackColor.withAlpha(80),
            borderRadius: BorderRadius.circular(100.r),
            
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(controller.selectedTabs.length, (
              selectedTabIndex,
            ) {
              final isSelected =
                  controller.selectedTabIndex.value == selectedTabIndex;
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => controller.selectTab(selectedTabIndex),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.w, vertical: 6.h),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.defaultBackgroundColor
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          child: Center(
                            child: TextProperty(
                              text: controller.selectedTabs[selectedTabIndex],
                                fontSize: 16.sp,
                                textColor: isSelected
                                    ? AppColors.whiteColor
                                    : AppColors.secondaryTextColor,
                                fontWeight: isSelected
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          
                  if (selectedTabIndex != controller.selectedTabs.length - 1)
                    SizedBox(width: 20.w),
                ],
              );
            }),
          ),
        ),
      );
    });
  }
}

