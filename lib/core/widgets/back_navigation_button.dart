import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class BackNavigationButton extends StatelessWidget {
  const BackNavigationButton({
    super.key,
    required this.pageContext,
    this.iconColor = AppColors.black,
    this.size = 18,
  });
  final BuildContext pageContext;
  final Color iconColor;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12.sp,
        ),
        color: AppColors.secondary.withOpacity(0.1),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        style: const ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: () {
          Navigator.pop(pageContext);
        },
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: iconColor,
          size: size.sp,
        ),
      ),
    );
  }
}
