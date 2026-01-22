import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacey_blacher/core/common/widgets/text_property.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';

class EnergyContainer extends StatelessWidget {
  final String text;
  final String subtext;
  final String imagePath;

  const EnergyContainer({
    super.key, 
    required this.text, 
    required this.subtext,
    required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(imagePath, height: 22.h),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextProperty(
              text: text, fontSize: 10.sp, fontWeight: FontWeight.w400, textColor: AppColors.primaryTextColor
            ),
            TextProperty(
              text: subtext, fontSize: 10.sp, fontWeight: FontWeight.w700, textColor: AppColors.primaryTextColor
            ),
          ],
        ),
      ],
    );
  }
}
