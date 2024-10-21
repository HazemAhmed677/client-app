import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/icons_and_texts.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/common_container_for_check_board.dart';

class CompletedCheckBoardItemDetails extends StatefulWidget {
  const CompletedCheckBoardItemDetails({
    super.key,
  });

  @override
  State<CompletedCheckBoardItemDetails> createState() =>
      _MeetingCheclBoardItemDetailsOfDetailsState();
}

class _MeetingCheclBoardItemDetailsOfDetailsState
    extends State<CompletedCheckBoardItemDetails> {
  // The currently selected priority.

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Meeting with Product Owner.',
            style: AppStyles.interSemiBold18.copyWith(
              fontSize: 16.sp,
            ),
          ),
          verticalSpace(20),
          Row(
            children: [
              const CommonContainerForCheckBoard(
                color: AppColors.lowPriority,
                priority: 'Completed',
              ),
              horizontalSpace(12),
              const CommonContainerForCheckBoard(
                color: AppColors.meetingContainer,
                priority: 'Meeting',
              ),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              iconHelperInCheckBoard(
                FontAwesomeIcons.calendarCheck,
                AppColors.grey,
              ),
              horizontalSpace(
                6,
              ),
              textHelperInCheckBoard(
                '6 Oct 2024',
                color: AppColors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
