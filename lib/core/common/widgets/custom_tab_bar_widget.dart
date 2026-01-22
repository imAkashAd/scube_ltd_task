import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';

class TabItem {
  final String label;
  final String? iconPath;

  TabItem({required this.label, this.iconPath});
}


class CustomTabBarWidget extends StatelessWidget {
  final List<TabItem> tabs;
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const CustomTabBarWidget({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(tabs.length, (index) {
        final isSelected = selectedIndex == index;

        return Expanded(
          child: GestureDetector(
            onTap: () => onTabSelected(index),
            child: Container(
              // padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isSelected ? AppColors.blueColor : AppColors.defaultBorderColor,
                    width: 2,
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.blueColor : Colors.transparent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                  ),
                ),
                child: Column(
                  children: [
                    if (tabs[index].iconPath != null)
                      Image.asset(
                        tabs[index].iconPath!,
                        height: 24,
                      ),
                    Text(tabs[index].label, style: TextStyle(
                      fontFamily: 'Inter',
                      color: isSelected ? AppColors.whiteColor : AppColors.primaryTextColor,
                      fontSize: 14.sp,
                      fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                    ),),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
