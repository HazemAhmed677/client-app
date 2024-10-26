import 'package:client_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theming/app_colors.dart';
import 'project_item_in_check_board.dart';

class ProjectsSliverList extends StatelessWidget {
  const ProjectsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(bottom: (index != 7) ? 16.sp : 0.0),
        child: InkWell(
          overlayColor: WidgetStateProperty.all<Color>(
            AppColors.transitionColor,
          ),
          borderRadius: BorderRadius.circular(14.sp),
          onTap: () {
            context.push(
              Routes.projectDetailsView,
            );
          },
          child: const Card(
            child: ProjectItemInCheckBoard(),
          ),
        ),
      ),
    );
  }
}
