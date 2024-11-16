import 'package:client_app/features/check_board/ui/widgets/common_check_board_item.dart';
import 'package:client_app/features/check_board/ui/widgets/meeting_check_board_item_details.dart';
import 'package:flutter/material.dart';

class MeetingCheckBoardItem extends StatelessWidget {
  const MeetingCheckBoardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonCheckBoardItem(
      child: MeetingCheclBoardItemDetailsOfDetails(),
    );
  }
}
