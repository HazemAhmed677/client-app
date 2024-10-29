import 'package:client_app/features/profile/ui/widgets/grid_view_element.dart';
import 'package:client_app/features/profile/ui/widgets/report_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'settings_widget.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10.sp,
        crossAxisSpacing: 10.sp,
        childAspectRatio: 1.sp,
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) => InkWell(
        borderRadius: BorderRadius.circular(16.sp),
        onTap: () {},
        child: (index != 1)
            ? const GridViewElement(
                icon: SettingsWidget(),
              )
            : const GridViewElement(
                icon: ReportWidget(),
              ),
      ),
    );
  }
}
