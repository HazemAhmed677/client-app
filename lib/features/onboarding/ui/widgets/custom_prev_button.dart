import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/app_colors.dart';

class CustomPrevButton extends StatelessWidget {
  const CustomPrevButton({
    super.key,
    required this.onPressed,
  });
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            vertical: 12.sp,
            horizontal: 14.sp,
          ),
        ), // Removes horizontal padding
        overlayColor: WidgetStateProperty.all<Color>(
          AppColors.d8,
        ),
        minimumSize: WidgetStateProperty.all<Size>(
            Size.zero), // Optional: Adjust minimum size
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStateProperty.all<Color>(
          AppColors.white,
        ), // Optional: Reduce the touch target size
      ),
      onPressed: onPressed,
      child: Icon(
        FontAwesomeIcons.arrowLeft,
        color: AppColors.darkGrey,
        size: 18.sp,
      ),
    );
  }
}
