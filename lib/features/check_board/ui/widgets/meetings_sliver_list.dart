import 'package:client_app/features/check_board/ui/widgets/meeting_check_board_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeetingsSliverList extends StatelessWidget {
  const MeetingsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(
          bottom: (index != 7) ? 22.0.sp : 0.0,
        ),
        child: const MeetingCheckBoardItem(),
      ),
    );
  }
}
