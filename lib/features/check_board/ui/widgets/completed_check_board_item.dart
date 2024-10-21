import 'package:client_app/features/check_board/ui/widgets/common_check_board_item.dart';
import 'package:client_app/features/check_board/ui/widgets/completed_check_board_item_details.dart';
import 'package:flutter/material.dart';

class CompletedCheckBoardItem extends StatelessWidget {
  const CompletedCheckBoardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonCheckBoardItem(
      child: CompletedCheckBoardItemDetails(),
    );
  }
}
