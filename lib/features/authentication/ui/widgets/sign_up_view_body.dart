import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/features/authentication/ui/widgets/name_and_email_part.dart';
import 'package:client_app/features/authentication/ui/widgets/sign_up_bottom_bar.dart';
import 'package:client_app/features/authentication/ui/widgets/sign_up_top_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'custom_action_button.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController textEditingController = TextEditingController();
  late String email, password, name;
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22.0.sp,
      ),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            clipBehavior: Clip.none,
            child: Column(
              children: [
                const SignUpTopSection(),
                Form(
                  autovalidateMode: autovalidateMode,
                  key: formKey,
                  child: NameAndEmailPart(
                    onChanged1: (value) {
                      name = value;
                    },
                    onChanged2: (value) {
                      email = value;
                    },
                    onChanged3: (value) {
                      password = value;
                    },
                    textEditingController: textEditingController,
                  ),
                ),
                verticalSpace(22),
                CustomActionButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      autovalidateMode = AutovalidateMode.disabled;
                      context.push(Routes.homeView);
                      // BlocProvider.of<SwitchViewsCubit>(context)
                      //     .setIndex(0);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                    setState(() {});
                  },
                  text: 'Sign Up',
                ),
                const SignUpFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
