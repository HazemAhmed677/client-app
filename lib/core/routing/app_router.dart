import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/core/widgets/custom_slider_transition.dart';
import 'package:client_app/core/widgets/custom_zooming_transition.dart';
import 'package:client_app/features/authentication/ui/login_view.dart';
import 'package:client_app/features/authentication/ui/sign_up_view.dart';
import 'package:client_app/features/bottom_nav_bar_switcher/ui/switcher_view.dart';
import 'package:client_app/features/check_board/ui/calendar_view.dart';
import 'package:client_app/features/home/ui/home_view.dart';
import 'package:client_app/features/onboarding/ui/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/bottom_nav_bar_switcher/logic/switch_views_cubit/switch_views_cubit.dart';

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
          duration: 300,
        ),
      ),

      // sign up
      GoRoute(
        path: Routes.signUpView,
        pageBuilder: (context, state) => CustomZoomingTransition(
          child: const SignUpView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),

      // switcher view
      GoRoute(
        path: Routes.switcherView,
        builder: (context, state) => BlocProvider(
          create: (context) => SwitchViewsCubit(),
          child: const SwitcherView(),
        ),
      ),
      // home
      GoRoute(
        path: Routes.homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: Routes.calendarView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const CalendarView(),
          key: state.pageKey,
          duration: 100,
        ),
      ),
    ],
  );
}
