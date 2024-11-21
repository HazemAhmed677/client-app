import 'package:client_app/features/profile/ui/widgets/settings_behind_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common_above_container.dart';
import 'settings_container_details.dart';

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
                top: MediaQuery.sizeOf(context).height > 592
                    ? MediaQuery.sizeOf(context).height * 0.15.h
                    : MediaQuery.sizeOf(context).height * 0.22.h,
                left: 0,
                right: 0,
                child: const CommonAboveContainer(
                  child: SettingsContainerDetails(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
