import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/core/views/meeting_details_view.dart';
import 'package:client_app/core/views/project_details_view.dart';
import 'package:client_app/core/views/task_details_view.dart';
import 'package:client_app/core/widgets/custom_slider_transition.dart';
import 'package:client_app/features/authentication/ui/login_view.dart';
import 'package:client_app/features/authentication/ui/sign_up_view.dart';
import 'package:client_app/features/bottom_nav_bar_switcher/ui/switcher_view.dart';
import 'package:client_app/features/check_board/ui/calendar_view.dart';
import 'package:client_app/features/create_board/ui/create_document.dart';
import 'package:client_app/features/create_board/ui/create_meeting.dart';
import 'package:client_app/features/create_board/ui/create_project_view.dart';
import 'package:client_app/features/create_board/ui/create_task_view.dart';
import 'package:client_app/features/home/ui/home_view.dart';
import 'package:client_app/features/onboarding/ui/onboarding_view.dart';
import 'package:client_app/features/profile/ui/document_view.dart';
import 'package:client_app/features/profile/ui/report_view.dart';
import 'package:client_app/features/profile/ui/settings_view.dart';
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
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const LoginView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),

      // sign up
      GoRoute(
        path: Routes.signUpView,
        pageBuilder: (context, state) => CustomSliderTransition(
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
      // calendar details
      GoRoute(
        path: Routes.calendarView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const CalendarView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      // project details
      GoRoute(
        path: Routes.projectDetailsView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const ProjectDetailView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      // task details
      GoRoute(
        path: Routes.taskDetailsView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const TaskDetailsView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      // meeting details
      GoRoute(
        path: Routes.meetingDetailsView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const MeetingDetailsView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      // profile
      GoRoute(
        path: Routes.documentView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const DocumentView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      // report
      GoRoute(
        path: Routes.reportView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const ReportView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      // settings
      GoRoute(
        path: Routes.settingsView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const SettingsView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      GoRoute(
        path: Routes.createTaskView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const CreareTaskView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      GoRoute(
        path: Routes.createProjectView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const CreateProjectView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      GoRoute(
        path: Routes.createDocumentView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const CreateDocumentView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      GoRoute(
        path: Routes.createMeetinfView,
        pageBuilder: (context, state) => CustomSliderTransition(
          child: const CreateMeetingView(),
          key: state.pageKey,
          duration: 300,
        ),
      ),
    ],
  );
}
