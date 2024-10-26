import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          overlayColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              18.sp,
            ),
          ),
          backgroundColor: AppColors.lowPriority,
        ),
        onPressed: flag ? null : widget.onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.0.sp,
          ),
          child: Text(
            'Checkout',
            style: AppStyles.interBold18.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
