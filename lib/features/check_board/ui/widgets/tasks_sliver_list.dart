import 'package:client_app/features/check_board/ui/widgets/task_check_board_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksSliverList extends StatelessWidget {
  const TasksSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(
          bottom: (index != 7) ? 16.0.sp : 0.0,
        ),
        child: const Card(
          child: AssingmentCheckBoardItem(),
        ),
      ),
    );
  }
}
