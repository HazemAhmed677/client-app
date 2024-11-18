import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/get_priority_list.dart';
import '../../../../core/helpers/icons_and_texts.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/common_container_for_check_board.dart';
import 'more_options.dart';

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
  final List<ProirityContainer> priorities = getStatusList();
  ProirityContainer priorityChoosed = const ProirityContainer(
    color: AppColors.lowPriority,
    priority: 'Completed',
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.0.sp,
              ),
              child: Text(
                'Meeting with Product Owner.',
                style: AppStyles.interSemiBold18.copyWith(
                  fontSize: 16.sp,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                right: 10.0.sp,
              ),
              child: const MoreOptionsMenu(
                deleteOnly: true,
              ),
            ),
          ],
        ),
        // verticalSpace(
        //   8,
        // ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.0.sp,
          ),
          child: Row(
            children: [
              PopupMenuButton<String>(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12.sp,
                  ),
                ),
                color: AppColors.background,
                // Show the current selected priority as the icon.
                icon: priorityChoosed,
                elevation: 6.sp,
                onSelected: (String selectedPriority) {
                  setState(() {
                    priorityChoosed = priorities.firstWhere(
                      (element) => element.priority == selectedPriority,
                    );
                  });
                },
                // Create the popup menu items with their priorities.
                itemBuilder: (context) => priorities
                    .map((priority) => PopupMenuItem<String>(
                          value: priority.priority,
                          child:
                              priority, // Use the widget to display the priority.
                        ))
                    .toList(),
              ),
              horizontalSpace(12),
              const ProirityContainer(
                color: AppColors.meetingContainer,
                priority: 'Meeting',
              ),
            ],
          ),
        ),
        verticalSpace(8),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.0.sp,
          ),
          child: Row(
            children: [
              iconHelperInCheckBoard(
                FontAwesomeIcons.calendarCheck,
                AppColors.darkGrey,
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
        ),
      ],
    );
  }
}
