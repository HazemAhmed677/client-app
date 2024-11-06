import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/features/check_board/ui/widgets/meeting_check_board_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MeetingsSliverList extends StatelessWidget {
  const MeetingsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(
          bottom: (index != 7) ? 16.0.sp : 0.0,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16.sp),
          onTap: () {
            context.push(Routes.meetingDetailsView);
          },
          child: const Card(
            child: MeetingCheckBoardItem(),
          ),
        ),
      ),
    );
  }
}
