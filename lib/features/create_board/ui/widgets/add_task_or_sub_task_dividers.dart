import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/features/create_board/ui/widgets/horizental_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../profile/ui/widgets/custom_edit_profile_button.dart';
import 'vertical_dashed_line.dart';

class AddTaskOrSubTaskDividers extends StatelessWidget {
  const AddTaskOrSubTaskDividers({
    super.key,
    required this.isProject,
  });
  final bool isProject;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(26.w, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalDashedLine(),
          Transform.translate(
            offset: Offset(0, -20.h),
            child: Row(
              children: [
                const HorizentalDashedLine(),
                CustomEditProfileButton(
                  onPressed: () {
                    if (isProject) {
                      context.push(Routes.createTaskView, extra: false);
                    } else {
                      context.push(Routes.createTaskView, extra: true);
                    }
                  },
                  text: isProject ? 'Add Task' : 'Add Sub Task',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
