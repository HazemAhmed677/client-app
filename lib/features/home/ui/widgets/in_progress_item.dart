import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/features/home/ui/widgets/in_progress_line_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InProgressItem extends StatelessWidget {
  const InProgressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.sp,
      width: 220.sp,
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
          vertical: 14.sp,
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
                  child: Icon(
                    FontAwesomeIcons.book,
                    color: AppColors.projectIcon,
                    size: 16.sp,
                  ),
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
                ),
              ),
            ),
            verticalSpace(12),
            const InProgressLineBar(
              percentage: 70,
            ),
          ],
        ),
      ),
    );
  }
}
