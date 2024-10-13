import 'package:client_app/features/onboarding/ui/widgets/custom_dot_indicaror.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageViewBar extends StatelessWidget {
  const CustomPageViewBar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (idx) => Padding(
          padding: (idx == 1)
              ? EdgeInsets.symmetric(
                  horizontal: 8.0.sp,
                )
              : EdgeInsets.zero,
          child: CustomDotIndicaror(
            isActive: (idx == index),
          ),
        ),
      ),
    );
  }
}
