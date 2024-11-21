import 'package:client_app/core/views/widgets/add_task_or_subs_row.dart';
import 'package:client_app/core/views/widgets/task_container_content.dart';
import 'package:client_app/core/views/widgets/tasks_details_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/spacing.dart';
import 'checkout_button.dart';
import 'details_of_container.dart';
import 'total_price_container.dart';

class TaskDetailsBody extends StatelessWidget {
  const TaskDetailsBody({super.key, required this.isAddSubTask});
  final bool isAddSubTask;
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
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.0.sp,
            ),
            child: Column(
              children: [
                verticalSpace(32),
                const TotalPriceContainer(
                  title: 'Price: ',
                  price: '4000',
                ),
                verticalSpace(24),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.0.sp,
            ),
            child: AddTasksOrSubsRow(
              isAddSubTask: isAddSubTask,
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
            18,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.0.sp,
            ),
            child: CheckoutButton(
              onPressed: () {},
            ),
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
