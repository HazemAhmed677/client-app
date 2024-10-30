import 'package:client_app/features/profile/ui/widgets/settings_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsContainerColumnOfOptions extends StatelessWidget {
  const SettingsContainerColumnOfOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: SettingsListTile(
              title: 'Edit profile',
              leading: Transform.rotate(
                angle: 3.14,
                child: const Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),
          SettingsListTile(
            title: 'Change password',
            leading: Transform.rotate(
              angle: 3.14,
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ],
      ),
    );
  }
}
