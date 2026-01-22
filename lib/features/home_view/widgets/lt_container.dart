import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacey_blacher/core/common/widgets/text_property.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/core/utils/constants/icon_path.dart';
import 'package:pacey_blacher/features/home_view/widgets/energy_container.dart';

class LtContainer extends StatelessWidget {
  const LtContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.defaultBorderColor,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextProperty(
                    text: 'LT_01',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      textColor: AppColors.primaryTextColor,
                  ),
              Row(
                children: [
                  Image.asset(IconPath.obj, height: 16.h,),
                  SizedBox(width: 4.w),
                  TextProperty(
                    text: '495.505 kWp / 440 kW',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      textColor: AppColors.blueColor,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Divider(
            color: AppColors.defaultBorderColor,
            thickness: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EnergyContainer(text: 'Lifetime Energy', subtext: '352.96 MWh', imagePath: IconPath.life),
              EnergyContainer(text: 'Today Energy', subtext: '273.69 kWh', imagePath: IconPath.todayen),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EnergyContainer(text: 'Prev. Meter Energy', subtext: '0.00 MWh', imagePath: IconPath.preen),
              EnergyContainer(text: 'Live Power', subtext: '352.96 MWh', imagePath: IconPath.liveen),
            ],
          ),
        ],      ),
    );
  }
}