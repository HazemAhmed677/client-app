import 'package:flutter/material.dart';

import 'widgets/task_details_body.dart';

class TaskDetailsView extends StatelessWidget {
  const TaskDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TaskDetailsBody(),
    );
  }
}
