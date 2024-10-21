import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/helpers/icons_and_texts.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/common_container_for_priority.dart';

class MeetingCheckBoardItemDetails extends StatefulWidget {
  const MeetingCheckBoardItemDetails({super.key});

  @override
  State<MeetingCheckBoardItemDetails> createState() =>
      _MeetingCheckBoardItemDetailsState();
}

class _MeetingCheckBoardItemDetailsState
    extends State<MeetingCheckBoardItemDetails> {
  // Define the available priorities.
  final List<CommonContainerForPriority> priorities = const [
    CommonContainerForPriority(
      color: AppColors.highPriority,
      priority: 'High',
    ),
    CommonContainerForPriority(
      color: AppColors.mediumPriority,
      priority: 'Medium',
    ),
    CommonContainerForPriority(
      color: AppColors.lowPriority,
      priority: 'Low',
    ),
  ];

  // The currently selected priority.
  CommonContainerForPriority priorityChoosed = const CommonContainerForPriority(
    color: AppColors.highPriority,
    priority: 'High',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Meeting with CTO.',
          style: AppStyles.interSemiBold18.copyWith(
            fontSize: 16.sp,
          ),
        ),
        verticalSpace(12),
        PopupMenuButton<String>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.sp),
          ),
          color: AppColors.background,
          // Show the current selected priority as the icon.
          icon: priorityChoosed,
          elevation: 6.sp,
          onOpened: () {
            log('Opened');
          },
          onCanceled: () {
            log('Cancelled');
          },
          onSelected: (String selectedPriority) {
            setState(() {
              log('Selected: $selectedPriority');
              // Update the priorityChoosed based on the selected value.
              priorityChoosed = priorities.firstWhere(
                (element) => element.priority == selectedPriority,
              );
            });
          },
          // Create the popup menu items with their priorities.
          itemBuilder: (context) => priorities
              .map((priority) => PopupMenuItem<String>(
                    value: priority.priority,
                    child: priority, // Use the widget to display the priority.
                  ))
              .toList(),
        ),
        verticalSpace(8),
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
              '14 Nov 2024',
              color: AppColors.grey,
            ),
          ],
        ),
      ],
    );
  }
}
