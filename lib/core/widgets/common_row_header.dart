import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';
import 'back_navigation_button.dart';

class CommonRowHeader extends StatelessWidget {
  const CommonRowHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.sp,
      decoration: const BoxDecoration(color: AppColors.white),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.0.sp,
            vertical: 12.sp,
          ),
          child: Column(
            children: [
              const Spacer(),
              Row(
                children: [
                  BackNavigationButton(
                    pageContext: context,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    title,
                    style: AppStyles.gilroyRegular17.copyWith(
                      fontSize: 20.sp,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
