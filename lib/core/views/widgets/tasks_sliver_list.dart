import 'package:client_app/core/views/widgets/task_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksDetailsSliverList extends StatelessWidget {
  const TasksDetailsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) => Card(
        child: Padding(
          padding: EdgeInsets.only(bottom: (index != 5) ? 12.sp : 0),
          child: TaskElement(),
        ),
      ),
    );
  }
}
