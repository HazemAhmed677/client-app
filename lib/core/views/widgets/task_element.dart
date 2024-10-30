import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/home/ui/widgets/in_progress_line_bar.dart';
import '../../theming/app_colors.dart';
import '../../theming/app_styles.dart';

class TaskElement extends StatefulWidget {
  const TaskElement({super.key});

  @override
  State<TaskElement> createState() => _TaskElementState();
}

class _TaskElementState extends State<TaskElement> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.sp,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.shade300.withOpacity(0.2),
            blurRadius: 2.sp,
            spreadRadius: 5.sp,
          ),
        ],
      ),
      child: Container(
        height: 80.sp,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            16.sp,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.sp,
            vertical: 12.sp,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    4.sp,
                  ),
                ),
                checkColor: AppColors.white,
                activeColor: AppColors.lowPriority,
                side: const BorderSide(
                  color: AppColors.black,
                ),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Splash Screen Design',
                    style: AppStyles.afacadfluxSemiBold18.copyWith(
                      color: isChecked ? AppColors.grey : AppColors.black,
                      fontSize: 16.sp,
                      decoration: isChecked
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),

                  verticalSpace(
                    12,
                  ),
                  // 28 out
                  // 28 in
                  // repair later in integration
                  InProgressLineBar(
                    percentage: 80,
                    width: (MediaQuery.sizeOf(context).width - (28 * 5)),
                    section2: AppColors.d8,
                    section1:
                        isChecked ? AppColors.grey : AppColors.mediumPriority,
                    hight: 9,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
