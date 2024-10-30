import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/features/notification/ui/widgets/notification_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import 'notification_common_column.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: CustomScrollView(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: verticalSpace(16),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Notification',
                style: AppStyles.gilroyRegular17.copyWith(
                  fontSize: 18.sp,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
          const NotificationCommonColumn(
            text: 'TODAY',
          ),
          const NotificationSliverList(),
          const NotificationCommonColumn(
            text: 'YESTERDAY',
          ),
          const NotificationSliverList(),
          SliverToBoxAdapter(child: verticalSpace(100)),
        ],
      ),
    );
  }
}
