import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/create_board/ui/widgets/common_text_field_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/common_container_for_check_board.dart';
import 'attach_file_widget.dart';
import 'colors_list_view.dart';
import 'common_list_tile.dart';

class CreateProjectSubColumn extends StatelessWidget {
  const CreateProjectSubColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22.0.w,
      ),
      child: Column(
        children: [
          const CommonListTile(
            leadingIcon: FontAwesomeIcons.solidFlag,
            title: 'Priority Level',
            trailing: ProirityContainer(
              color: AppColors.highPriority,
              priority: 'High',
            ),
          ),
          verticalSpace(
            22,
          ),
          CommonListTile(
            leadingIcon: FontAwesomeIcons.calendarDays,
            title: 'Due Date',
            trailing: Text(
              'Tuesday 09/07/2024',
              style: AppStyles.afacadfluxSemiBold18.copyWith(
                fontSize: 15.sp,
                color: AppColors.grey.shade400,
              ),
            ),
          ),
          verticalSpace(
            22,
          ),
          CommonListTile(
            leadingIcon: FontAwesomeIcons.solidClock,
            title: 'Time',
            trailing: Text(
              '08:20 PM',
              style: AppStyles.afacadfluxSemiBold18.copyWith(
                fontSize: 15.sp,
                color: AppColors.grey.shade400,
              ),
            ),
          ),
          verticalSpace(22),
          const ColorListView(),
          verticalSpace(22),
          const AttachFileWidget(),
          verticalSpace(22),
          const CommonTextFieldColumn(
            text: 'Add Note',
            maxLines: 4,
            hintText: 'Add Your Notes',
          ),
          verticalSpace(22),
        ],
      ),
    );
  }
}
