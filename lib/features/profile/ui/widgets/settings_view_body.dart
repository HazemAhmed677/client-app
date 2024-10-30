import 'package:client_app/features/profile/ui/widgets/settings_behind_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'settings_above_container.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      clipBehavior: Clip.none,
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const SettingsBehindContainer(),
              Positioned(
                top: MediaQuery.sizeOf(context).height * 0.13.sp,
                left: 0,
                right: 0,
                child: const SettingsAboveContainer(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
