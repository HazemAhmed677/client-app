import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:client_app/core/widgets/custom_prefix_text_field_for_edit_profile_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';

import '../widgets/custom_text_field_for_edit_profile.dart';

void showEditProfileDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 16.sp),
        backgroundColor: AppColors.white,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.sp),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  // borderRadius: BorderRadius.circular(22.sp),
                ),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.sp,
                  ),
                  child: Text(
                    'Edit Profile',
                    style: AppStyles.poppinsMedium14.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.white,
                      fontWeight: FontWeightHelper.light,
                    ),
                  ),
                )),
              ),
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
            ],
          ),
        ),
      );
    },
  );
}
