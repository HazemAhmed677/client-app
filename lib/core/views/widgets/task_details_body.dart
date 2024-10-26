import 'package:client_app/core/views/widgets/add_task_or_subs_row.dart';
import 'package:client_app/core/views/widgets/task_container_content.dart';
import 'package:client_app/core/views/widgets/tasks_details_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/spacing.dart';
import 'details_of_container.dart';

class TaskDetailsBody extends StatelessWidget {
  const TaskDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: DetailsOfContainer(
            containerDetails: TaskContainerContent(),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(24),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.0.sp,
            ),
            child: const AddTasksOrSubsRow(
              isAddTask: false,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(16),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.0.sp,
          ),
          sliver: const TasksDetailsSliverList(
            isProjectPage: false,
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(
            22,
          ),
        ),
      ],
    );
  }
}
