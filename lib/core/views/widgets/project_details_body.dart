import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/views/widgets/add_task_or_subs_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'checkout_button.dart';
import 'container_content.dart';
import 'details_of_container.dart';
import 'tasks_details_sliver_list.dart';
import 'total_price_container.dart';

class ProjectDetailsBody extends StatelessWidget {
  const ProjectDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: DetailsOfContainer(
            containerDetails: ProjectContainerContent(),
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
                const TotalPriceContainer(),
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
            child: const AddTasksOrSubsRow(),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(16),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.0.sp,
          ),
          sliver: const TasksDetailsSliverList(),
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
