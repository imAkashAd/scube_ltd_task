import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/core/common/widgets/custom_button.dart';
import 'package:pacey_blacher/core/common/widgets/custom_textfield.dart';
import 'package:pacey_blacher/core/common/widgets/text_property.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/routes/app_routes.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // SizedBox(height: 32.h),
          Padding(padding: EdgeInsets.only(top: 30.h)),
          TextProperty(
            text: 'Login',
            textColor: AppColors.primaryTextColor,
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 24.h,),
          CustomTextfield(
            foColor: AppColors.defaultBorderColor,
            enColor: AppColors.defaultBorderColor,
            fieldText: 'Username'),
          SizedBox(height: 12.h,),
          CustomTextfield(
            foColor: AppColors.defaultBorderColor,
            enColor: AppColors.defaultBorderColor,
            fieldText: 'Password',
            isPassword: true,
          ),
          SizedBox(height: 12.h,),
          Align(
            alignment: Alignment.centerRight,
            child: TextProperty(
              text: 'Forgot Password?',
              fontFamily: 'Inter',
              textColor: AppColors.hintTextColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              textDecoration: TextDecoration.underline,
              underlineColor: AppColors.hintTextColor,
              lineHeight: 1.2,
            ),
          ),
          SizedBox(height: 20.h,),
          CustomButton(text: 'Login', onTap: (){
            Get.toNamed(AppRoute.homeView);
          }),
          SizedBox(height: 8.h,),
          RichText(text: TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.secondaryTextColor,
            ),
            children: [
              TextSpan(
                text: 'Register Now',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.defaultBackgroundColor,
                ),
              ),
            ],
          )),
          Padding(padding:  EdgeInsets.only(bottom: 120.h)),
        ],
      ),
    );
  }
}
