import 'package:client_app/core/theming/app_styles.dart';
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
  });
  final Color edgeColor;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Color overlayColor;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46.sp,
      // width: (MediaQuery.sizeOf(context).width * 0.5 - 16).sp,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          overlayColor: overlayColor,
          side: BorderSide(
            width: 1.0, // Border width
            color: edgeColor, // Border color
          ),
        ),
        onPressed: onPressed,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: AppStyles.poppinsMedium14.copyWith(
              color: textColor,
              fontSize: 15.sp,
            ),
          ),
        ),
      ),
    );
  }
}
