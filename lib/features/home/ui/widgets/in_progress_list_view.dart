import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/widgets/calendar_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'in_progress_item.dart';

class InProgressListView extends StatelessWidget {
  const InProgressListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128.sp,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            right: (index != 5) ? 16.sp : 0,
          ),
          child: InkWell(
              overlayColor: WidgetStateProperty.all<Color>(
                AppColors.transitionColor,
              ),
              borderRadius: BorderRadius.circular(
                22.sp,
              ),
              onTap: () {
                context.push(
                  Routes.taskDetailsView,
                );
              },
              child: const InProgressItem()),
        ),
      ),
    );
  }
}
