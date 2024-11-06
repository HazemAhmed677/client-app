import 'package:client_app/features/check_board/ui/widgets/task_check_board_item_details.dart';
import 'package:client_app/features/check_board/ui/widgets/common_check_board_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/common_container_for_check_board.dart';

class TaskCheckBoardItem extends StatefulWidget {
  const TaskCheckBoardItem({super.key});

  @override
  State<TaskCheckBoardItem> createState() => _TaskCheckBoardItemState();
}

class _TaskCheckBoardItemState extends State<TaskCheckBoardItem> {
  final List<ProirityContainer> priorities = const [
    ProirityContainer(
      color: AppColors.highPriority,
      priority: 'Not Started',
    ),
    ProirityContainer(
      color: AppColors.onTrackColor,
      priority: 'On Track',
    ),
    ProirityContainer(
      color: AppColors.mediumPriority,
      priority: 'Adjustments',
    ),
    ProirityContainer(
      color: AppColors.lowPriority,
      priority: 'Completed',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CommonCheckBoardItem(
      child: TaskCheckBoardItemDetails(
        priorities: priorities,
      ),
    );
  }
}
