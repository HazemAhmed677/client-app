import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/widgets/dialog_container.dart';
import 'package:client_app/features/create_board/ui/widgets/project_item_for_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/cancel_and_actionbutton_row.dart';

class ProjectsDialog extends StatelessWidget {
  const ProjectsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return DialogContainer(
      title: 'Project',
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 22.h,
                  ),
                  sliver: SliverGrid.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.64.sp,
                      crossAxisSpacing: 22.w,
                      mainAxisSpacing: 26.h,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) => InkWell(
                      borderRadius: BorderRadius.circular(16.sp),
                      onTap: () {},
                      child: const ProjectItemForDialog(
                        text: 'Passport service',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(12),
          CancelAndActionButtonRow(
            actionText: 'Save',
            onPressed: () {
              context.pop();
            },
          ),
          verticalSpace(22),
        ],
      ),
    );
  }
}
