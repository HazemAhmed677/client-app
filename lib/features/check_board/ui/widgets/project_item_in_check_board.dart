import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/check_board/ui/widgets/project_sliver_list_item_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectItemInCheckBoard extends StatelessWidget {
  const ProjectItemInCheckBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sp,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(
          16.sp,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18.sp,
          vertical: 16.sp,
        ),
        child: const ProjectSliverListItemDetails(),
      ),
    );
  }
}
