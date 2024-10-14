import 'package:client_app/features/authentication/ui/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/app_colors.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: SignUpViewBody(),
    );
  }
}
