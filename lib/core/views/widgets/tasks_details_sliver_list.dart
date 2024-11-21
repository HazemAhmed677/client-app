import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/views/widgets/task_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../routing/routes.dart';

class TasksDetailsSliverList extends StatelessWidget {
  const TasksDetailsSliverList({
    super.key,
    this.isProjectPage = true,
  });
  final bool isProjectPage;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(
          bottom: (index != 5) ? 8.sp : 0,
        ),
        child: InkWell(
          splashColor: AppColors.mediumPriority,
          borderRadius: BorderRadius.circular(16.sp),
          onTap: isProjectPage
              ? () {
                  context.push(
                    Routes.taskDetailsView,
                    extra: true,
                  );
                }
              : null,
          child: const Card(
            child: TaskElement(),
          ),
        ),
      ),
    );
  }
}
