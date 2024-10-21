import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/icons_and_texts.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/common_container_for_check_board.dart';

class AssignmentCheckBoardItemDetails extends StatefulWidget {
  const AssignmentCheckBoardItemDetails({super.key, required this.priorities});
  final List<CommonContainerForCheckBoard> priorities;

  @override
  State<AssignmentCheckBoardItemDetails> createState() =>
      _AssignmentCheckBoardItemDetailsState();
}

class _AssignmentCheckBoardItemDetailsState
    extends State<AssignmentCheckBoardItemDetails> {
  // The currently selected priority.
  CommonContainerForCheckBoard priorityChoosed =
      const CommonContainerForCheckBoard(
    color: AppColors.onTrackColor,
    priority: 'On Track',
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.sp,
          ),
          child: Text(
            'Check if the project is done.',
            style: AppStyles.interSemiBold18.copyWith(
              fontSize: 16.sp,
            ),
          ),
        ),
        verticalSpace(12),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.sp,
          ),
          child: Row(
            children: [
              PopupMenuButton<String>(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.sp),
                ),
                color: AppColors.background,
                // Show the current selected priority as the icon.
                icon: priorityChoosed,
                elevation: 6.sp,
                onSelected: (String selectedPriority) {
                  setState(() {
                    priorityChoosed = widget.priorities.firstWhere(
                      (element) => element.priority == selectedPriority,
                    );
                  });
                },
                // Create the popup menu items with their priorities.
                itemBuilder: (context) => widget.priorities
                    .map((priority) => PopupMenuItem<String>(
                          value: priority.priority,
                          child:
                              priority, // Use the widget to display the priority.
                        ))
                    .toList(),
              ),
              horizontalSpace(4),
              const CommonContainerForCheckBoard(
                  color: AppColors.highPriority, priority: 'High'),
            ],
          ),
        ),
        verticalSpace(8),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.sp,
          ),
          child: Row(
            children: [
              iconHelperInCheckBoard(
                FontAwesomeIcons.calendarCheck,
                AppColors.grey,
              ),
              horizontalSpace(
                6,
              ),
              textHelperInCheckBoard(
                '10 Dec 2024',
                color: AppColors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
