import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';

class CustomTextfield extends StatelessWidget {
  final Color? fillColor;
  final String fieldText;
  final Color? enColor;
  final Color? foColor;
  final bool isPassword;
  final String? prefixIcon; // asset path to image
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final int maxLines;
  final Color? hintTextColor;
  final double? borderRadius;

  const CustomTextfield({
    super.key,
    this.fillColor,
    required this.fieldText,
    this.enColor,
    this.foColor,
    this.isPassword = false,
    this.prefixIcon,
    this.controller,
    this.onChanged,
    this.maxLines = 1,
    this.hintTextColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final RxBool isObscure = isPassword.obs;

    return Obx(() {
      return Container(
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black.withOpacity(0.05),
      //     blurRadius: 10.6,
      //     offset: Offset(0, 0),
      //   ),
      // ],
    ),
        child: TextField(
          maxLines: maxLines,
          controller: controller,
          onChanged: onChanged,
          obscureText: isObscure.value,
          cursorColor: Colors.black,
          cursorHeight: 20.h,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: Image.asset(
                      prefixIcon!,
                      height: 16.h,
                      width: 16.w,
                      fit: BoxFit.contain,
                    ),
                  )
                : null,
        
            prefixIconConstraints: BoxConstraints(
              minWidth: 0,
              minHeight: 0,
              maxHeight: 24.h,
            ),
            suffixIconConstraints: BoxConstraints(
              minWidth: 0,
              minHeight: 0,
              maxHeight: 24.h,
            ),
        
            suffixIcon: isPassword
                ? Padding(
                    padding: EdgeInsets.only(left: 8.w, right: 12.w),
                    child: GestureDetector(
                      onTap: () => isObscure.value = !isObscure.value,
                      child: Icon(
                        isObscure.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 16.h,
                        color: AppColors.hintTextColor,
                      ),
                    ),
                  )
                : null,
        
            isDense: true,
            filled: true,
            fillColor: fillColor ?? const Color(0xFFFFFFFF),
            contentPadding: EdgeInsets.symmetric(
              vertical: 14.h,
              horizontal: 13.w,
            ),
            border: InputBorder.none,
            hintText: fieldText,
            hintStyle: TextStyle(
              fontFamily: 'Satoshi',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: hintTextColor ?? AppColors.hintTextColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
              borderSide: BorderSide(color: enColor ?? Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
              borderSide: BorderSide(color: foColor ?? Colors.transparent),
            ),
          ),
        ),
      );
    });
  }
}
