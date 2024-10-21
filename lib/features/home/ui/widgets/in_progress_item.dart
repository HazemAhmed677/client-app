import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/features/home/ui/widgets/in_progress_line_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/icons_and_texts.dart';

class InProgressItem extends StatelessWidget {
  const InProgressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128.sp,
      width: 228.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          22,
        ),
        color: AppColors.taskColor1.withOpacity(
          0.1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.sp,
          vertical: 12.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Office Project',
                  style: AppStyles.poppinsSemiBold18.copyWith(
                    color: AppColors.grey,
                    fontSize: 16.sp,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 26.sp,
                  width: 26.sp,
                  decoration: BoxDecoration(
                    color: AppColors.projectColor1,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: projectBookIcon(),
                )
              ],
            ),
            const Spacer(),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Grocery shopping app\ndesign',
                style: AppStyles.poppinsSemiBold18.copyWith(
                  color: AppColors.black,
                  fontSize: 17.sp,
                ),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            const InProgressLineBar(
              percentage: 70,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
