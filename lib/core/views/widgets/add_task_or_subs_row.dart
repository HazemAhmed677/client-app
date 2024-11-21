import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../theming/app_colors.dart';
import '../../theming/app_styles.dart';

class AddTasksOrSubsRow extends StatelessWidget {
  const AddTasksOrSubsRow({super.key, required this.isAddSubTask});
  final bool isAddSubTask;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          isAddSubTask ? 'Add Sub Task' : 'Add Task',
          style: AppStyles.nexaSemiBoldDarkGrey18.copyWith(
            fontSize: 18.sp,
            color: AppColors.grey.shade700,
            fontWeight: FontWeightHelper.extraBold,
          ),
        ),
        horizontalSpace(10),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(), //
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all<Color>(
              AppColors.white.withOpacity(0.2),
            ),
            backgroundColor: WidgetStateProperty.all<Color>(
              AppColors.mediumPriority,
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.sp),
              ),
            ),
            padding: WidgetStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(
                horizontal: 3.sp,
                vertical: 3.sp,
              ),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () async {
            await context.push(Routes.createTaskView, extra: isAddSubTask);
          },
          icon: Icon(
            FontAwesomeIcons.plus,
            color: AppColors.white,
            size: 16.sp,
          ),
        ),
        const Spacer(),
        Text(
          !isAddSubTask ? 'All Tasks' : 'All Sub Tasks',
          style: AppStyles.nexaMediumDarkGrey14.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeightHelper.extraBold,
            color: AppColors.grey.shade500,
          ),
        ),
        horizontalSpace(8),
        Transform.rotate(
          angle: -1.571,
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 18.sp,
          ),
        ),
      ],
    );
  }
}
