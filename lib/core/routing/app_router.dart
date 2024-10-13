import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/features/authentication/ui/login_view.dart';
import 'package:client_app/features/authentication/ui/sign_up_view.dart';
import 'package:client_app/features/onboarding/ui/onboarding_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter goRouter = GoRouter(
    routes: [
      // onboarding
      GoRoute(
        path: Routes.onBoardingView,
        builder: (context, state) => const OnboardingView(),
      ),

      // login
      GoRoute(
        path: Routes.loginView,
        builder: (context, state) => const LoginView(),
      ),

      // sign up
      GoRoute(
        path: Routes.signUpView,
        builder: (context, state) => const SignUpView(),
      ),
    ],
  );
}
