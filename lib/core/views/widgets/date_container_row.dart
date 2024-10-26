import 'package:client_app/core/views/widgets/project_status_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../helpers/icons_and_texts.dart';
import '../../helpers/spacing.dart';
import '../../theming/app_colors.dart';

class DateContainerRow extends StatefulWidget {
  const DateContainerRow({
    super.key,
  });

  @override
  State<DateContainerRow> createState() => _DateContainerRowState();
}

class _DateContainerRowState extends State<DateContainerRow> {
  ProjectStatusContainer priorityChoosed = const ProjectStatusContainer(
    text: 'On Track',
    backgroundColor: AppColors.onTrackColor,
  );
  List<ProjectStatusContainer> status = [
    const ProjectStatusContainer(
      text: 'Not Started',
      backgroundColor: AppColors.highPriority,
    ),
    const ProjectStatusContainer(
      text: 'On Track',
      backgroundColor: AppColors.onTrackColor,
    ),
    const ProjectStatusContainer(
      text: 'Adjustments',
      backgroundColor: AppColors.mediumPriority,
    ),
    const ProjectStatusContainer(
      text: 'Completed',
      backgroundColor: AppColors.lowPriority,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        iconHelperInCheckBoard(
          FontAwesomeIcons.calendarDays,
          AppColors.darkGrey,
        ),
        horizontalSpace(6),
        textHelperInCheckBoard(
          'July 02, 2024',
          color: AppColors.grey,
        ),
        const Spacer(),
        PopupMenuButton<String>(
          position: PopupMenuPosition.under,
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
              priorityChoosed = status.firstWhere(
                (element) => element.text == selectedPriority,
              );
            });
          },
          // Create the popup menu items with their priorities.
          itemBuilder: (context) => status
              .map((priority) => PopupMenuItem<String>(
                    value: priority.text,
                    child: priority, // Use the widget to display the priority.
                  ))
              .toList(),
        ),
      ],
    );
  }
}
