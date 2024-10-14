import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';

class CustomDotIndicaror extends StatelessWidget {
  const CustomDotIndicaror({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: (isActive) ? 28 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: (isActive) ? AppColors.primary : AppColors.d8,
      ),
      duration: const Duration(
        milliseconds: 300,
      ),
    );
  }
}
