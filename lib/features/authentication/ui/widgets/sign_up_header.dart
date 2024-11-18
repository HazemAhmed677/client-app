import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/authentication/ui/widgets/sign_word.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/app_styles.dart';

class SignUpHeader extends StatefulWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  State<SignUpHeader> createState() => _SignUpHeaderState();
}

class _SignUpHeaderState extends State<SignUpHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SignWord(
          title: 'Create Acount',
          subTitle: 'Fill your information below or register',
          height: 12,
        ),
        Text(
          'with your social account.',
          style: AppStyles.nexaSemiBoldDarkGrey18.copyWith(
            fontSize: 15,
            color: AppColors.grey,
          ),
        ),
        verticalSpace(18),
      ],
    );
  }
}
