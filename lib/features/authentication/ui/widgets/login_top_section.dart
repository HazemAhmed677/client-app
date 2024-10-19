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

class _LogInTopSectionState extends State<LogInTopSection>
    with SingleTickerProviderStateMixin {
  String email = '', password = '';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(12),
          AnimatedBuilder(
            animation: fadeAnimation,
            builder: (context, _) => FadeTransition(
              opacity: fadeAnimation,
              child: SizedBox(
                height: 100.sp,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    AppImages.aimatrix,
                  ),
                ),
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
