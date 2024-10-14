import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import 'already_have_an_account.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(24),
        AlreadyHaveAnAccount(
          onTap: () {
            context.pushReplacement(
              Routes.loginView,
            );
          },
        ),
        verticalSpace(28),
      ],
    );
  }
}
