import 'package:client_app/features/check_board/ui/widgets/assignment_check_board_item_details.dart';
import 'package:client_app/features/check_board/ui/widgets/common_check_board_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/common_container_for_check_board.dart';

class AssingmentCheckBoardItem extends StatefulWidget {
  const AssingmentCheckBoardItem({super.key});

  @override
  State<AssingmentCheckBoardItem> createState() =>
      _AssingmentCheckBoardItemState();
}

class _AssingmentCheckBoardItemState extends State<AssingmentCheckBoardItem> {
  final List<CommonContainerForCheckBoard> priorities = const [
    CommonContainerForCheckBoard(
      color: AppColors.highPriority,
      priority: 'Not Started',
    ),
    CommonContainerForCheckBoard(
      color: AppColors.onTrackColor,
      priority: 'On Track',
    ),
    CommonContainerForCheckBoard(
      color: AppColors.mediumPriority,
      priority: 'Adjustments',
    ),
    CommonContainerForCheckBoard(
      color: AppColors.lowPriority,
      priority: 'Completed',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CommonCheckBoardItem(
      child: AssignmentCheckBoardItemDetails(
        priorities: priorities,
      ),
    );
  }
}
