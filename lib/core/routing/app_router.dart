import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/features/onboarding/ui/onboarding_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: Routes.onBoardingView,
        builder: (context, state) => const OnboardingView(),
      ),
    ],
  );
}
