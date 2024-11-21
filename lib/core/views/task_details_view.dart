import 'package:flutter/material.dart';

import 'widgets/task_details_body.dart';

class TaskDetailsView extends StatelessWidget {
  const TaskDetailsView({super.key, required this.isAddSubTask});
  final bool isAddSubTask;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TaskDetailsBody(
        isAddSubTask: isAddSubTask,
      ),
    );
  }
}
