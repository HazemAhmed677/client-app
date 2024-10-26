import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/widgets/back_navigation_button.dart';
import 'package:client_app/core/widgets/calendar_icon.dart';
import 'package:client_app/core/widgets/dynamic_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsOfContainer extends StatelessWidget {
  const DetailsOfContainer({super.key, required this.containerDetails});
  final Widget containerDetails;
  @override
  Widget build(BuildContext context) {
    return DynamicContainer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.0.sp,
            vertical: 12.sp,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  BackNavigationButton(pageContext: context),
                  const Spacer(),
                  const CalendarIcon(
                    color: AppColors.darkGrey,
                  ),
                ],
              ),
              containerDetails,
            ],
          ),
        ),
      ),
    );
  }
}
