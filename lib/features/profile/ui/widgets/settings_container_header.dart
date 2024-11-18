import 'dart:io';

import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_images.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class SettingsContainerHeader extends StatefulWidget {
  const SettingsContainerHeader({super.key});

  @override
  State<SettingsContainerHeader> createState() =>
      _SettingsContainerHeaderState();
}

class _SettingsContainerHeaderState extends State<SettingsContainerHeader> {
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
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                  color: AppColors.grey.shade200,
                  blurRadius: 2,
                  spreadRadius: 3,
                  offset: Offset(0, 2.sp))
            ],
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            style: const ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () async {
              setState(() {});
              await selectImage();
            },
            highlightColor: AppColors.grey.shade400.withOpacity(
              0.4,
            ),
            icon: CircleAvatar(
              radius: 28.sp,
              backgroundImage: selectedImage != null
                  ? FileImage(selectedImage!)
                  : const AssetImage(AppImages.github),
            ),
          ),
        ),
        horizontalSpace(16),
        Text(
          'Livia Vaccaro',
          style: AppStyles.nexaBoldNoColor20.copyWith(
            fontSize: 15.sp,
            color: AppColors.grey.shade800,
            fontWeight: FontWeightHelper.extraBold,
          ),
        )
      ],
    );
  }
}
