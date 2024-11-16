import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/widgets/custom_prefix_text_field_for_edit_profile_dialog.dart';
import 'package:client_app/core/widgets/dialog_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';
import '../../../../core/widgets/CancelAndActionButtonRow.dart';
import '../../../../core/widgets/custom_text_field_for_edit_profile.dart';

void showEditProfileDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DialogContainer(
        title: 'Edit Profile',
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
              child: const CustomTextFieldForEditProfile(
                icon: CustomPrefixTextFieldForEditProfileDialog(
                    icon: IconlyBold.profile),
                hint: 'Shaban Haider',
              ),
            ),
            verticalSpace(18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
              child: const CustomTextFieldForEditProfile(
                icon: CustomPrefixTextFieldForEditProfileDialog(
                    icon: FontAwesomeIcons.squareCheck),
                hint: 'UI/UX Designer',
              ),
            ),
            verticalSpace(18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
              child: const CustomTextFieldForEditProfile(
                icon: CustomPrefixTextFieldForEditProfileDialog(
                    icon: FontAwesomeIcons.envelope),
                hint: 'example@AIMTRIX.com',
              ),
            ),
            verticalSpace(18),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
              child: const CustomTextFieldForEditProfile(
                icon: CustomPrefixTextFieldForEditProfileDialog(
                    icon: FontAwesomeIcons.phone),
                hint: '01010101010',
              ),
            ),
            verticalSpace(32),
            CancelAndActionButtonRow(
              onPressed: () {
                context.pop();
              },
              actionText: 'Update',
            ),
            verticalSpace(32),
          ],
        ),
      );
    },
  );
}
