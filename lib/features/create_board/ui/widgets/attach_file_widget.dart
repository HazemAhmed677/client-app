import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';

class AttachFileWidget extends StatefulWidget {
  const AttachFileWidget({super.key});

  @override
  State<AttachFileWidget> createState() => _AttachFileWidgetState();
}

class _AttachFileWidgetState extends State<AttachFileWidget> {
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    Future<void> selectImage() async {
      XFile? image;
      try {
        image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
        );
      } catch (e) {
        //
      }
      if (image != null) {
        selectedImage = File(image.path);
        if (context.mounted) {
          // BlocProvider.of<SignUpWithEmailCubit>(context).profileImage =
          //     selectedImage;
        }
        setState(() {});
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Attach Files',
          style: AppStyles.nexaRegular17.copyWith(
            color: AppColors.black,
            fontSize: 15.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        verticalSpace(6),
        InkWell(
          borderRadius: BorderRadius.circular(8.sp),
          onTap: () {
            selectImage();
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8.sp),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.05),
                  spreadRadius: 2.sp,
                  blurRadius: 2.sp,
                  offset: Offset(
                    0,
                    3.sp,
                  ),
                ),
                BoxShadow(
                  color: AppColors.secondary.withOpacity(0.05),
                  spreadRadius: 3.sp,
                  blurRadius: 3.sp,
                  offset: Offset(
                    0,
                    6.sp,
                  ), // changes position of shadow
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                top: 18.h,
                bottom: 18.h,
                right: 14.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    selectedImage == null
                        ? FontAwesomeIcons.cloudArrowUp
                        : FontAwesomeIcons.check,
                    color: selectedImage == null
                        ? AppColors.primary
                        : AppColors.lowPriority,
                    size: 18.sp,
                  ),
                  horizontalSpace(12),
                  Text(
                    'Click here to attach files',
                    style: AppStyles.nexaSemiBoldDarkGrey18.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
