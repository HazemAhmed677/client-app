import 'package:client_app/features/notification/ui/widgets/notification_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/confirmation_alert.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';

class NotificationSliverList extends StatelessWidget {
  const NotificationSliverList({super.key, this.isMeeting = false});
  final bool isMeeting;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(bottom: (index != 3) ? 10.0.h : 0),
        child: Column(
          children: [
            InkWell(
              onLongPress: () {
                showDeleteConfirmation(context);
              },
              onTap: () {
                // redirect
                isMeeting
                    ? context.push(Routes.meetingDetailsView)
                    : context.push(Routes.taskDetailsView);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.0.sp,
                  vertical: 12,
                ),
                child: const NotificationElement(),
              ),
            ),
            (index != 3)
                ? Divider(
                    // height: 24,
                    thickness: 3,
                    color: AppColors.grey.shade200,
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
