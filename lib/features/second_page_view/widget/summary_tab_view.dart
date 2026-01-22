import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacey_blacher/core/common/widgets/text_property.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/core/utils/constants/icon_path.dart';
import 'package:pacey_blacher/features/second_page_view/widget/active_inactive_container.dart';
import 'package:pacey_blacher/features/second_page_view/widget/second_tab_bar_widget.dart';

class SummaryTabView extends StatelessWidget {
  const SummaryTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      child: Column(
        children: [
          TextProperty(
            text: 'Electricity',
            textColor: AppColors.greyTextColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 8.h),
          Divider(color: AppColors.greyTextColor, thickness: 1.h),
          SizedBox(height: 30.h),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 150.w,
                height: 150.h,
                child: CircularProgressIndicator(
                  value: 0.65,
                  strokeWidth: 24.w,
                  backgroundColor: AppColors.defaultBorderColor.withOpacity(
                    0.3,
                  ),
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.defaultBackgroundColor,
                  ),
                  strokeCap: StrokeCap.round,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextProperty(
                    text: 'Total Power',
                    textColor: AppColors.primaryTextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 4.h),
                  TextProperty(
                    text: '5.53 kw',
                    textColor: AppColors.primaryTextColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.h),
          SecondTabBarWidget(),
          SizedBox(height: 4.h),
          Divider(color: AppColors.greyTextColor, thickness: 3),
          SizedBox(height: 16.h),
          SizedBox(
            height: 260.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ActiveInactiveContainer(
                    dataViewType: 'Data View',
                    actOrInact: '(Active)',
                    actOrInactColor: AppColors.defaultBackgroundColor,
                    markColor: AppColors.defaultBackgroundColor,
                  ),
                  SizedBox(height: 8.h,),
                  ActiveInactiveContainer(
                    imagePath: IconPath.battery,
                    dataViewType: 'Data Type 1',
                    actOrInact: '(Active)',
                    actOrInactColor: AppColors.defaultBackgroundColor,
                    markColor: AppColors.orangeColor,
                  ),
                  SizedBox(height: 8.h,),
                  ActiveInactiveContainer(
                    imagePath: IconPath.tower,
                    dataViewType: 'Data Type 2',
                    actOrInact: '(Inactive)',
                    actOrInactColor: AppColors.redColor,
                    markColor: AppColors.defaultBackgroundColor,
                  ),
                  SizedBox(height: 8.h,),
                  ActiveInactiveContainer(
                    dataViewType: 'Data Type 3',
                    actOrInact: '(Active)',
                    actOrInactColor: AppColors.defaultBackgroundColor,
                    markColor: AppColors.defaultBackgroundColor,
                  ),
                  // SizedBox(height: 8.h,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
