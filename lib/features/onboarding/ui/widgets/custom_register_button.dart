import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';

class CustomRegisterButton extends StatelessWidget {
  const CustomRegisterButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.overlayColor,
  });
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final Color overlayColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              buttonColor,
              buttonColor.withOpacity(
                0.9,
              )
            ], // Define your gradient colors here
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(32)),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              Colors.transparent, // Make button background transparent
          shadowColor: Colors.transparent,
          overlayColor: overlayColor,
          padding: EdgeInsets.symmetric(
            vertical: 12.sp,
          ),
        ),
        child: Text(
          text,
          style: AppStyles.afacadfluxSemiBold16.copyWith(
            color: textColor,
            fontSize: 18.sp,
          ),
        ),
      ),
    );
  }
}
