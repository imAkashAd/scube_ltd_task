import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacey_blacher/core/common/widgets/text_property.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';

class MiniPowerWidget extends StatelessWidget {
  final String text;
  final String subtext;
  final String? imagePath;
  final bool isToday;

  const MiniPowerWidget({
    super.key, 
    required this.text, 
    required this.subtext,
    this.isToday = false,
    this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.r),
        
      ),
      padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(imagePath!, height: 22.h),
          SizedBox(width: 4.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextProperty(
                text: text, fontSize: 12.sp, fontWeight: FontWeight.w600, textColor: AppColors.primaryTextColor
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextProperty(
                    text: subtext, fontSize: 9.sp, fontWeight: FontWeight.w400, textColor: AppColors.hintTextColor
                  ),
                  if (isToday)
                    TextProperty(
                      text: '(Till Today)', fontSize: 5.sp, fontWeight: FontWeight.w400, textColor: AppColors.hintTextColor
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
