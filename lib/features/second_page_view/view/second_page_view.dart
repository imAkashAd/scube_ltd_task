import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/core/common/controllers/custom_tabbar_widget_controller.dart';
import 'package:pacey_blacher/core/common/widgets/custom_app_bar.dart';
import 'package:pacey_blacher/core/common/widgets/custom_button.dart';
import 'package:pacey_blacher/core/common/widgets/custom_tab_bar_widget.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/core/utils/constants/icon_path.dart';
import 'package:pacey_blacher/features/second_page_view/widget/custom_tab_view.dart';
import 'package:pacey_blacher/features/second_page_view/widget/mini_feature_container.dart';
import 'package:pacey_blacher/routes/app_routes.dart';

class SecondPageView extends StatelessWidget {
  const SecondPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CustomTabbarWidgetController>();

    final tabs = [
      TabItem(label: 'Summary'),
      TabItem(label: 'SLD'),
      TabItem(label: 'Data'),
    ];

    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      appBar: CustomAppBar(
        homePage: false,
        middleTitle: '2nd Page',
        rightButtonIcon: IconPath.notification,
        rightButtonText: '',
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 40.h),
          child: Column(
            children: [
              CustomButton(
                topnBotPad: 10.h,
                color: AppColors.chionColor,
                text: '1st Page Navigate',
                onTap: () {
                  Get.toNamed(AppRoute.homeView);
                },
                icon: Icons.arrow_forward_ios,
                iconSize: 18.sp,
              ),
              SizedBox(height: 20.h),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.greyBorder),
                ),
                child: Column(
                  children: [
                    Obx(() {
                      return CustomTabBarWidget(
                        tabs: tabs,
                        selectedIndex: controller.selectedIndex.value,
                        onTabSelected: controller.changeTab,
                      );
                    }),
                    CustomTabView(),
                    SizedBox(height: 10.h),
                    
                  ],
                ),
              ),
              SizedBox(height: 12.h),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MiniFeatureContainer(
                        title: 'Analysis Pro',
                        imagePath: IconPath.ana,
                      ),
                      SizedBox(width: 16.w),
                      MiniFeatureContainer(
                        title: 'G. Generator',
                        imagePath: IconPath.generate,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MiniFeatureContainer(
                        title: 'Plant Summary',
                        imagePath: IconPath.charge,
                      ),
                      SizedBox(width: 16.w),
                      MiniFeatureContainer(
                        title: 'Natural Gas',
                        imagePath: IconPath.fire,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MiniFeatureContainer(
                        title: 'D. Generator',
                        imagePath: IconPath.generate,
                      ),
                      SizedBox(width: 16.w),
                      MiniFeatureContainer(
                        title: 'Water Process',
                        imagePath: IconPath.tap,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
