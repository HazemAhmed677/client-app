import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_images.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';

class ContainerProfileContentMiddleSection extends StatefulWidget {
  const ContainerProfileContentMiddleSection({super.key});

  @override
  State<ContainerProfileContentMiddleSection> createState() =>
      _ContainerProfileContentMiddleSectionState();
}

class _ContainerProfileContentMiddleSectionState
    extends State<ContainerProfileContentMiddleSection> {
  File? selectedImage;
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
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () async {
            await selectImage();
          },
          child: CircleAvatar(
            radius: 48.sp,
            backgroundImage: selectedImage != null
                ? FileImage(selectedImage!)
                : const AssetImage(
                    AppImages.github,
                  ),
          ),
        ),
        verticalSpace(14),
        Text(
          'Hazem Ahmed',
          style: AppStyles.nexaSemiBoldDarkGrey18.copyWith(
            fontSize: 20.sp,
            color: AppColors.black,
            // fontWeight: FontWeightHelper.extraBold,
          ),
        ),
        Text(
          'Software engineer',
          style: AppStyles.nexaSemiBoldDarkGrey18.copyWith(
            fontSize: 14.sp,
            color: AppColors.grey.shade400,
            fontWeight: FontWeightHelper.extraBold,
          ),
        ),
      ],
    );
  }
}
