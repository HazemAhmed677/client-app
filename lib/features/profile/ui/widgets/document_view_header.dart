import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/back_navigation_button.dart';

class DocumentViewHeader extends StatelessWidget {
  const DocumentViewHeader({super.key});

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
                    'Documents',
                    style: AppStyles.gilroyRegular17.copyWith(
                      fontSize: 20.sp,
                      color: AppColors.black,
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
