import 'package:client_app/features/check_board/ui/widgets/task_check_board_item_details.dart';
import 'package:client_app/features/check_board/ui/widgets/common_check_board_item.dart';
import 'package:flutter/material.dart';

class TaskCheckBoardItem extends StatelessWidget {
  const TaskCheckBoardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonCheckBoardItem(
      child: TaskCheckBoardItemDetails(),
    );
  }
}
