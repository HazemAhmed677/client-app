import 'package:client_app/features/check_board/ui/widgets/meeting_check_board_item_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';

class MeetingCheckBoardItem extends StatelessWidget {
  const MeetingCheckBoardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(
          16.sp,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18.sp,
          vertical: 14.sp,
        ),
        child: const MeetingCheckBoardItemDetails(),
      ),
    );
  }
}
