import 'package:client_app/features/create_board/ui/widgets/create_task_body.dart';
import 'package:flutter/material.dart';

class CreareTaskView extends StatelessWidget {
  const CreareTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CreateTaskBody(),
    );
  }
}
