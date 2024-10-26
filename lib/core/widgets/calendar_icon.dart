import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../routing/routes.dart';
import '../theming/app_colors.dart';

class CalendarIcon extends StatelessWidget {
  const CalendarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.calendarView);
      },
      child: Icon(
        FontAwesomeIcons.calendarDays,
        color: AppColors.secondary,
        size: 22.sp,
      ),
    );
  }
}
