import 'package:client_app/features/check_board/ui/widgets/assingment_check_board_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssignmentsSliverList extends StatelessWidget {
  const AssignmentsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(
          bottom: (index != 7) ? 22.0.sp : 0.0,
        ),
        child: const AssingmentCheckBoardItem(),
      ),
    );
  }
}
