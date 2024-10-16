import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/theming/app_colors.dart';

class CustomPhotoStack extends StatefulWidget {
  const CustomPhotoStack({
    super.key,
  });
  @override
  State<CustomPhotoStack> createState() => _CustomPhotoStackState();
}

class _CustomPhotoStackState extends State<CustomPhotoStack> {
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

    return Align(
      alignment: Alignment.center,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.d8.withOpacity(0.6),
            backgroundImage:
                (selectedImage != null) ? FileImage(selectedImage!) : null,
            maxRadius: 44.sp,
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
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
              icon: Visibility(
                visible: selectedImage == null,
                child: Icon(
                  Icons.add_a_photo_outlined,
                  color: (selectedImage != null)
                      ? Colors.grey.shade200
                      : AppColors.primary,
                  size: (selectedImage != null) ? 20.sp : 22.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
