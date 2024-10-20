import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'project_item_in_check_board.dart';

class ProjectsSliverList extends StatelessWidget {
  const ProjectsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(bottom: (index != 7) ? 22.0.sp : 0.0),
        child: const ProjectItemInCheckBoard(),
      ),
    );
  }
}
