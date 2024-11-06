import 'package:client_app/features/check_board/ui/widgets/common_check_board_item.dart';
import 'package:client_app/features/check_board/ui/widgets/meeting_check_board_item_details.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/common_container_for_check_board.dart';

class MeetingCheckBoardItem extends StatefulWidget {
  const MeetingCheckBoardItem({super.key});

  @override
  State<MeetingCheckBoardItem> createState() => _MeetingCheckBoardItemState();
}

class _MeetingCheckBoardItemState extends State<MeetingCheckBoardItem> {
  final List<ProirityContainer> priorities = const [
    ProirityContainer(
      color: AppColors.highPriority,
      priority: 'High',
    ),
    ProirityContainer(
      color: AppColors.mediumPriority,
      priority: 'Medium',
    ),
    ProirityContainer(
      color: AppColors.lowPriority,
      priority: 'Low',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CommonCheckBoardItem(
      child: MeetingCheclBoardItemDetailsOfDetails(
        priorities: priorities,
      ),
    );
  }
}
