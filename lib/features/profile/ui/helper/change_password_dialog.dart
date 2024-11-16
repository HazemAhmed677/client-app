import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/widgets/dialog_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/widgets/cancel_and_actionbutton_row.dart';
import '../../../../core/widgets/custom_text_field_for_edit_profile.dart';

void showChangePasswordDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DialogContainer(
        title: 'Change Password',
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
              child: const CustomTextFieldForProfileDialogs(
                hint: 'Enter Current Password',
                label: 'Current Password',
              ),
            ),
            verticalSpace(18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
              child: const CustomTextFieldForProfileDialogs(
                hint: 'Enter New Password',
                label: 'New Password',
              ),
            ),
            verticalSpace(18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
              child: const CustomTextFieldForProfileDialogs(
                hint: 'Confirm Password',
                label: 'Confirm Password',
              ),
            ),
            verticalSpace(32),
            CancelAndActionButtonRow(
              onPressed: () {
                context.pop();
              },
              actionText: 'Change',
            ),
            verticalSpace(32),
          ],
        ),
      );
    },
  );
}
