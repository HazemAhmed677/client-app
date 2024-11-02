import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/core/theming/app_images.dart';
import 'package:client_app/features/authentication/ui/widgets/sign_word.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'custom_action_button.dart';
import 'email_and_password_part.dart';

class LogInTopSection extends StatefulWidget {
  const LogInTopSection({
    super.key,
  });
  @override
  State<LogInTopSection> createState() => _LogInTopSectionState();
}

class _LogInTopSectionState extends State<LogInTopSection> {
  String email = '', password = '';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(12),
          SizedBox(
            height: 120.sp,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                AppImages.aimatrix,
              ),
            ),
          ),
          SignWord(
            title: 'Welcome to AIMATRIX',
            subTitle: r"Sign in to continue",
            height: 12.sp,
          ),
          verticalSpace(42),
          EmailAndPasswordPart(
            onChanged1: (value) {
              email = value;
            },
            onChanged2: (value) {
              password = value;
            },
          ),
          verticalSpace(32),
          CustomActionButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                autovalidateMode = AutovalidateMode.disabled;
                context.push(Routes.switcherView);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
            },
            text: 'Log In',
          ),
        ],
      ),
    );
  }
}
