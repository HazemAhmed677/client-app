import 'package:client_app/features/profile/ui/widgets/custom_devider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import 'settings_container_header.dart';

class SettingsContainerDetails extends StatelessWidget {
  const SettingsContainerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.sp,
          ),
          child: const SettingsContainerHeader(),
        ),
        const CustomDevider(
          height: 42,
        ),
      ],
    );
  }
}
