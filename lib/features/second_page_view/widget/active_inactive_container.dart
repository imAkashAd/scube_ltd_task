import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacey_blacher/core/common/widgets/text_property.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/core/utils/constants/icon_path.dart';

class ActiveInactiveContainer extends StatelessWidget {
  final Color? containerColor;
  final Color? markColor; 
  final String? dataViewType;
  final String? actOrInact;
  final Color? actOrInactColor;
  final String? imagePath;
  
  const ActiveInactiveContainer({
    super.key,
    this.containerColor,
    this.markColor,
    this.dataViewType,
    this.actOrInact,
    this.actOrInactColor,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: containerColor ?? AppColors.lightBlueColor,
        border: Border.all(color: AppColors.greyBorder),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                
                child: Image.asset(imagePath ?? IconPath.solar, width: 24.w)),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                          color: markColor ?? AppColors.defaultBackgroundColor,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      TextProperty(
                        text: dataViewType ?? 'Data View',
                        textColor: AppColors.primaryTextColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(width: 14.w),
                      TextProperty(
                        text: actOrInact ?? '(Active)',
                        textColor: actOrInactColor ?? AppColors.defaultBackgroundColor,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Data 1',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyTextColor,
                          ),
                        ),
                        TextSpan(
                          text: '   :  ',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                        TextSpan(
                          text: '55505.63',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Data 2',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyTextColor,
                          ),
                        ),
                        TextSpan(
                          text: '   :  ',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                        TextSpan(
                          text: '58805.63',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Image.asset(IconPath.arrow, height: 12.h),
        ],
      ),
    );
  }
}
