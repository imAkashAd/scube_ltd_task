import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? dividerHeight;
  final Color? backgroundColor;
  final Color? dividerColor;
  final String? title;
  final String? middleTitle;
  final bool? homePage;
  final Color? titleColor;
  final Color? backButtonColor;
  final Color? middleTitleColor;
  final bool showEditButton;
  final VoidCallback? onEditTap;
  final String? rightButtonText;
  final String? rightButtonIcon;
  final Color? iconColor;

  const CustomAppBar({
    super.key,
    this.backgroundColor,
    this.dividerColor,
    this.title,
    this.middleTitle,
    this.dividerHeight,
    this.homePage,
    this.titleColor,  
    this.backButtonColor,
    this.middleTitleColor,
    this.showEditButton = false,
    this.onEditTap,
    this.rightButtonText,
    this.rightButtonIcon,
    this.iconColor,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 50.h, bottom: 16.h),
      decoration: BoxDecoration(color: backgroundColor ?? AppColors.whiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (homePage == false)
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 24.sp,
                color: backButtonColor ?? AppColors.primaryTextColor,
              ),
            ),
          if (title != null) ...[
            SizedBox(width: 16.w),
            Text(
              title!,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: titleColor ?? AppColors.primaryTextColor,
              ),
            ),
          ],
          if (middleTitle != null)
            Expanded(
              child: Text(
                middleTitle!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: middleTitleColor ?? AppColors.primaryTextColor,
                ),
              ),
            )
          else
            const Spacer(),
          if (showEditButton || rightButtonText != null)
            GestureDetector(
              onTap: onEditTap,
              child: Row(
                children: [
                  if (rightButtonIcon != null)
                    Image.asset(
                      rightButtonIcon!,
                      height: 20.h,
                    ),
                  if (rightButtonIcon != null && rightButtonText != null)
                    SizedBox(width: 4.w),
                  if (rightButtonText != null)
                    Text(
                      rightButtonText!,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                ],
              ),
            )
          else if (homePage == true)
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications,
                color: iconColor ?? AppColors.primaryTextColor,
              ),
            )
          else
            SizedBox(width: 30.w),
        ],
      ),
    );
  }
}
