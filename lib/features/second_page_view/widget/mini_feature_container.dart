import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacey_blacher/core/common/widgets/text_property.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';

class MiniFeatureContainer extends StatelessWidget {

  final String title;
  final String imagePath;

  const MiniFeatureContainer({
    super.key,
    required this.title,
    required this.imagePath,
    });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(8.w, 6.h, 8.w, 6.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.greyBorder),
        ),
        child: Row(
          children: [
            Image.asset(imagePath, height: 24.h),
            SizedBox(width: 8.w),
            TextProperty(text: title, textColor: AppColors.greyTextColor, fontSize: 14.sp, fontWeight: FontWeight.w600)
          ],
        ),
      ),
    );
  }
}