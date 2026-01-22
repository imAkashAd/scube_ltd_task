import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/features/home_view/model/power_data_row.dart';
import 'power_data_row_widget.dart';
import 'table_header.dart';

class DataTableContainer extends StatelessWidget {
  final List<PowerDataRow> rows;

  const DataTableContainer({
    super.key,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16.h,),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TableHeader(),
          const SizedBox(height: 8),
          const Divider(
            color: AppColors.defaultBorderColor,
            thickness: 2,
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: rows.length,
            itemBuilder: (context, index) {
              return PowerDataRowWidget(
                row: rows[index],
                isEven: index.isEven,
              );
            },
          ),
        ],
      ),
    );
  }
}
