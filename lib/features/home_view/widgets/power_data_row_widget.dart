import 'package:flutter/material.dart';
import 'package:pacey_blacher/core/utils/constants/colors.dart';
import 'package:pacey_blacher/features/home_view/model/power_data_row.dart';

class PowerDataRowWidget extends StatelessWidget {
  final PowerDataRow row;
  final bool isEven;

  const PowerDataRowWidget({
    super.key,
    required this.row,
    required this.isEven,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: isEven ? Colors.white : AppColors.cellColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              row.label,
              style: const TextStyle(fontSize: 12),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              row.yesterday,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              row.today,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
