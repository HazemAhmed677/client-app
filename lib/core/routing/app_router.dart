import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/core/widgets/custom_zooming_transition.dart';
import 'package:client_app/features/authentication/ui/login_view.dart';
import 'package:client_app/features/authentication/ui/sign_up_view.dart';
import 'package:client_app/features/home/ui/home_view.dart';
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
        pageBuilder: (context, state) => CustomZoomingTransition(
          child: const LoginView(),
          key: state.pageKey,
          duration: 140,
        ),
      ),

      // sign up
      GoRoute(
        path: Routes.signUpView,
        pageBuilder: (context, state) => CustomZoomingTransition(
          child: const SignUpView(),
          key: state.pageKey,
          duration: 140,
        ),
      ),

      // home
      GoRoute(
        path: Routes.homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
