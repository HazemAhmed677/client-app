import 'package:client_app/core/widgets/dialog_container.dart';
import 'package:client_app/features/create_board/ui/widgets/project_item_for_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectsDialog extends StatelessWidget {
  const ProjectsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return DialogContainer(
      title: 'Project',
      body: Expanded(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 22.w,
                vertical: 12.h,
              ),
              sliver: SliverGrid.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.64.sp,
                    crossAxisSpacing: 22.w,
                    mainAxisSpacing: 32.h,
                    crossAxisCount: 3),
                itemBuilder: (context, index) => const ProjectItemForDialog(
                  text: 'Passport service',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
