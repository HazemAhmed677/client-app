import 'package:client_app/features/create_board/ui/widgets/create_task_body.dart';
import 'package:flutter/material.dart';

class CreareTaskView extends StatelessWidget {
  const CreareTaskView({super.key, required this.isAddSubTask});
  final bool isAddSubTask;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CreateTaskBody(
        isAddSubTask: isAddSubTask,
      ),
    );
  }
}
