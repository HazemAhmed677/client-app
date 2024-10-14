import 'package:client_app/features/authentication/ui/widgets/custom_photo_stack.dart';
import 'package:client_app/features/authentication/ui/widgets/sign_up_header.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';

class SignUpTopSection extends StatelessWidget {
  const SignUpTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SignUpHeader(),
        const CustomPhotoStack(),
        verticalSpace(
          12,
        ),
      ],
    );
  }
}
