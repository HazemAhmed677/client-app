import 'dart:developer';

import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreOptionsMenu extends StatefulWidget {
  const MoreOptionsMenu({super.key});

  @override
  State<MoreOptionsMenu> createState() => _MoreOptionsMenuState();
}

class _MoreOptionsMenuState extends State<MoreOptionsMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(
        Icons.more_horiz,
        size: 22.sp,
        color: AppColors.bottomNavBarColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.sp),
      ),
      color: AppColors.background,
      onSelected: (String value) {
        if (value == 'Update') {
          log('Update selected');
          // Handle Update logic here
        } else if (value == 'Delete') {
          log('Delete selected');
          // Handle Delete logic here
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Update',
          child: ListTile(
            leading: Icon(
              Icons.edit,
              color: AppColors.meetingContainer,
            ),
            title: Text('Update'),
          ),
        ),
        const PopupMenuItem<String>(
          value: 'Delete',
          child: ListTile(
            leading: Icon(
              Icons.delete,
              color: AppColors.black,
            ),
            title: Text('Delete'),
          ),
        ),
      ],
    );
  }
}
