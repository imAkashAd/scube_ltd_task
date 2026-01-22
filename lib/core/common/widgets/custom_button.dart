import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final Color? imageColor;
  final BorderRadius? borderRadius;
  final Color? iconColor;
  final IconData? icon;
  final Color? borderColor;
  final String text;
  final String? iconImagePath;
  final Color? color;
  final Color? textColor;
  final VoidCallback onTap;
  final double? fontSize;
  final double? width;
  final double? height;
  final double? iconSize;
  final double? topnBotPad;
  final double? buttonWidth;
  final String? prefixIcon;
  final String? fontFamily;
  final bool? isShadowNeed;
  final EdgeInsets? padding;

  const CustomButton({
    this.imageColor,
    this.borderRadius,
    this.iconColor,
    super.key,
    required this.text,
    required this.onTap,
    this.iconImagePath,
    this.color,
    this.textColor,
    this.fontSize,
    this.borderColor,
    this.icon,
    this.width,
    this.height,
    this.iconSize,
    this.topnBotPad,
    this.buttonWidth,
    this.prefixIcon,
    this.fontFamily,
    this.isShadowNeed = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        // height: 40.h,
        padding: padding ?? EdgeInsets.only(
          top: topnBotPad ?? 16.h,
          bottom:  topnBotPad ?? 16.h,
          left: 28.w,
          right: 28.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? AppColors.defaultBorderColor,
            width: 1.w,
          ), 
          borderRadius: borderRadius ?? BorderRadius.circular(8.r),
          color: color ?? AppColors.defaultBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconImagePath != null)
              Image.asset(
                iconImagePath!,
                height: height,
                width: width,
                color: imageColor,
              ),
            if (iconImagePath != null) SizedBox(width: 8.h),

            // ignore: unnecessary_null_comparison
            if (text != null)
              Text(
                text,
                style: TextStyle(
                  fontFamily: fontFamily ?? 'Satoshi',
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize ?? 16.sp,
                  color: textColor ?? Colors.white,
                ),
              ),
            if (icon != null)
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Icon(icon!, color: iconColor ?? Colors.white, size: iconSize),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
