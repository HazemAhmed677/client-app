import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/home/ui/widgets/project_item_in_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProjectsListView extends StatelessWidget {
  const ProjectsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(
          bottom: (index != 3) ? 12.sp : 0,
        ),
        child: InkWell(
          overlayColor: WidgetStateProperty.all<Color>(
            AppColors.transitionColor,
          ),
          borderRadius: BorderRadius.circular(16.sp),
          onTap: () {
            context.push(Routes.projectDetailsView);
          },
          child: const ProjectItemInHome(),
        ),
      ),
    );
  }
}
