import 'package:client_app/features/profile/ui/widgets/settings_container_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';

class SettingsAboveContainer extends StatelessWidget {
  const SettingsAboveContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0.sp),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.sp),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.shade300,
              blurRadius: 8,
              spreadRadius: 4,
            )
          ],
        ),
        child: const SettingsContainerDetails(),
      ),
    );
  }
}
