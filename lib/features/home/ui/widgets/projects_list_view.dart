import 'package:client_app/features/home/ui/widgets/project_item_in_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectsListView extends StatelessWidget {
  const ProjectsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(
          bottom: (index != 3) ? 16.sp : 0,
        ),
        child: const ProjectItemInHome(),
      ),
    );
  }
}
