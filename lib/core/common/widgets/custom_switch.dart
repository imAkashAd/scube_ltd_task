import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/core/common/controllers/custom_switch_controller.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;

  final CustomSwitchController controller = Get.put(CustomSwitchController());

  CustomSwitch({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: Switch(
        value: value,
        onChanged: onChanged,

        activeThumbColor: AppColors.whiteColor,
        activeTrackColor: AppColors.tabBackColor,
        inactiveThumbColor: AppColors.primaryColor,
        inactiveTrackColor: Color(0xFFDFE3E8),
        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),

        // Additional styling
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}