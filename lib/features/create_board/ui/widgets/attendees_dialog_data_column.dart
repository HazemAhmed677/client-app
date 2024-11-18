import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';

class AttendeesDialogDataColumn extends StatelessWidget {
  const AttendeesDialogDataColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shaban Haider',
          style: AppStyles.poppinsSemiBold18,
        ),
        Text(
          'CFO',
          style: AppStyles.afacadfluxSemiBold16.copyWith(
            color: AppColors.primary,
          ),
        )
      ],
    );
  }
}
