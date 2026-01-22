import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pacey_blacher/core/common/controllers/custom_tabbar_widget_controller.dart';
import 'package:pacey_blacher/features/second_page_view/widget/summary_tab_view.dart';

class CustomTabView extends StatelessWidget {
  const CustomTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CustomTabbarWidgetController>();

    final views = [
      SummaryTabView(),
      Center(child: Text('SLD Content')),
      Center(child: Text('Data Content')),
    ];

    return Obx(() => views[controller.selectedIndex.value]);
  }
}
