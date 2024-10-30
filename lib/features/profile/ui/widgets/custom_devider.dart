import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';

class CustomDevider extends StatelessWidget {
  const CustomDevider({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: 3,
      color: AppColors.grey.shade200,
    );
  }
}
