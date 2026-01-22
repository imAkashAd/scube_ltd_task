import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/core/common/widgets/custom_app_bar.dart';
import 'package:pacey_blacher/core/common/widgets/custom_button.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/core/utils/constants/icon_path.dart';
import 'package:pacey_blacher/core/utils/constants/image_path.dart';
import 'package:pacey_blacher/features/home_view/model/power_data_row.dart';
import 'package:pacey_blacher/features/home_view/widgets/capacity_container.dart';
import 'package:pacey_blacher/features/home_view/widgets/data_table_container.dart';
import 'package:pacey_blacher/features/home_view/widgets/lt_container.dart';
import 'package:pacey_blacher/features/home_view/widgets/mini_power_widget.dart';
import 'package:pacey_blacher/features/home_view/widgets/tomp_show_container.dart';
import 'package:pacey_blacher/routes/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<PowerDataRow> rows = const [
    PowerDataRow(
      label: 'AC Max Power',
      yesterday: '1636.50 kW',
      today: '2121.88 kW',
    ),
    PowerDataRow(
      label: 'Net Energy',
      yesterday: '6439.16 kWh',
      today: '4875.77 kWh',
    ),
    PowerDataRow(
      label: 'Specific Yield',
      yesterday: '1.25 kWh/kWp',
      today: '0.94 kWh/kWp',
    ),
    PowerDataRow(
      label: 'Specific Yield',
      yesterday: '1.25 kWh/kWp',
      today: '0.94 kWh/kWp',
    ),
    PowerDataRow(
      label: 'Specific Yield',
      yesterday: '1.25 kWh/kWp',
      today: '0.94 kWh/kWp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackgroundColor,
      appBar: CustomAppBar(
        homePage: false,
        middleTitle: '1st Page',
        rightButtonIcon: IconPath.notification,
        rightButtonText: '',
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 40.h),
          child: Column(
            children: [
              CustomButton(
                topnBotPad: 10.h,
                color: AppColors.chionColor,
                text: '2nd Page Navigate',
                onTap: () {
                  Get.toNamed(AppRoute.secondPageView);
                },
                icon: Icons.arrow_forward_ios,
                iconSize: 18.sp,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: MiniPowerWidget(
                      imagePath: ImagePath.lpower,
                      text: '10000 kW',
                      subtext: 'Live AC Power',
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: MiniPowerWidget(
                      imagePath: ImagePath.pgeneration,
                      text: '82.58 %',
                      subtext: 'Plant Generation',
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: MiniPowerWidget(
                      imagePath: ImagePath.lpr,
                      text: '85.61 %',
                      subtext: 'Live PR',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: MiniPowerWidget(
                      imagePath: ImagePath.cumpr,
                      text: '27.58 %',
                      subtext: 'Cumulative PR',
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: MiniPowerWidget(
                      isToday: true,
                      imagePath: ImagePath.rtpv,
                      text: '10000 ৳',
                      subtext: 'Return PV',
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: MiniPowerWidget(
                      imagePath: ImagePath.tenr,
                      text: '10000 kWh',
                      subtext: 'Total Energy',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              TompShowContainer(),
              SizedBox(height: 12.h),
              DataTableContainer(rows: rows),
              SizedBox(height: 12.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    Image.asset(IconPath.pv, height: 22.h),
                    SizedBox(width: 8.w),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Total Num of PV Module',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                        TextSpan(
                          text: '   :  ',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                        TextSpan(
                          text: '6372 pcs. (585 Wp each)',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(height: 8.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: CapacityContainer(text: 'Total AC Capacity ', subtext: '3000 KW', imagePath: IconPath.ac)),
                  SizedBox(width: 8.w),
                  Expanded(child: CapacityContainer(text: 'Total DC Capacity ', subtext: '3.727 MWp', imagePath: IconPath.dc))
                ],
              ),
              SizedBox(height: 8.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: CapacityContainer(text: 'Date of Commissioning', subtext: '17/07/2024', imagePath: IconPath.cal)),
                  SizedBox(width: 8.w),
                  Expanded(child: CapacityContainer(text: 'Number of Inverter', subtext: '30', imagePath: IconPath.inv))
                ],
              ),
              SizedBox(height: 8.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: CapacityContainer(text: 'Total AC Capacity ', subtext: '3000 KW', imagePath: IconPath.ac)),
                  SizedBox(width: 8.w),
                  Expanded(child: CapacityContainer(text: 'Total AC Capacity ', subtext: '3000 KW', imagePath: IconPath.ac))
                ],
              ),
              SizedBox(height: 12.h,),
              LtContainer(),
              SizedBox(height: 12.h,),
              LtContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
