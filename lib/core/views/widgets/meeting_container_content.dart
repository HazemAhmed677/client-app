import 'package:client_app/core/views/widgets/custom_colored_container.dart';
import 'package:client_app/core/views/widgets/date_container_column_for_meeting_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../helpers/spacing.dart';
import '../../theming/app_colors.dart';
import '../../theming/app_styles.dart';
import 'people_list_view.dart';

class MeetingContainerContent extends StatelessWidget {
  const MeetingContainerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.0.sp,
        vertical: 12.sp,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(12),
          Text(
            'Meeting with employees',
            style: AppStyles.interSemiBold18,
          ),
          verticalSpace(18),
          Row(
            children: [
              Column(
                children: [
                  const CustomColoredContainer(
                    backgroundColor: Colors.purple,
                    text: '16 Attendees',
                  ),
                  verticalSpace(18),
                  const CustomColoredContainer(
                    backgroundColor: AppColors.lowPriority,
                    text: 'Hazem Ahmed',
                  ),
                ],
              ),
              const Spacer(),
              const DateContainerColumnForMeetingDetails()
            ],
          ),
          verticalSpace(24),
          const PeopleListView(),
          verticalSpace(22),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Nulla facilisi. Duis aliquet egestas purus in blandit.',
            style: AppStyles.afacadfluxSemiBold18.copyWith(
              fontSize: 15.sp,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
