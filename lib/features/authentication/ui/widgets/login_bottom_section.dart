import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/features/authentication/ui/widgets/dont_have_account.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class LogInBottomSection extends StatelessWidget {
  const LogInBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DontHaveAccount(
          onTap: () {
            context.pushReplacement(
              Routes.signUpView,
            );
          },
        ),
        verticalSpace(
          26,
        ),
      ],
    );
  }
}
