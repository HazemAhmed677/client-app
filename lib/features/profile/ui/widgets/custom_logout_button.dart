import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLogoutButton extends StatelessWidget {
  const CustomLogoutButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.edgeColor,
    required this.backgroundColor,
    required this.textColor,
    required this.overlayColor,
    this.shape,
  });
  final Color edgeColor;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Color overlayColor;
  final Function()? onPressed;
  final RoundedRectangleBorder? shape;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46.sp,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          overlayColor: overlayColor,
          side: BorderSide(
            width: 1.0, // Border width
            color: edgeColor, // Border color
          ),
          shape: shape,
        ),
        onPressed: onPressed,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: AppStyles.nexaMediumDarkGrey14.copyWith(
              color: textColor,
              fontSize: 15.sp,
              fontWeight: FontWeightHelper.extraBold,
            ),
          ),
        ),
      ),
    );
  }
}
