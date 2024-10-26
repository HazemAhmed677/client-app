import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/widgets/back_navigation_button.dart';
import 'package:client_app/core/widgets/calendar_icon.dart';
import 'package:client_app/core/widgets/dynamic_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectDetailsContainer extends StatelessWidget {
  const ProjectDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicContainer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0.sp, vertical: 12.sp),
          child: Column(
            children: [
              Row(
                children: [
                  BackNavigationButton(pageContext: context),
                  const Spacer(),
                  const CalendarIcon(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
