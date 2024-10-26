import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../helpers/icons_and_texts.dart';
import '../../helpers/spacing.dart';
import '../../theming/app_colors.dart';
import '../../theming/app_styles.dart';

class DateContainerRow extends StatelessWidget {
  const DateContainerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
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
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              32.sp,
            ),
            border: Border.all(
              color: AppColors.darkGrey,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 36.0.sp,
              vertical: 12.sp,
            ),
            child: Text(
              'Done',
              style: AppStyles.interSemiBold18.copyWith(
                fontSize: 14.sp,
                color: AppColors.darkGrey,
              ),
            ),
          ),
        )
      ],
    );
  }
}
