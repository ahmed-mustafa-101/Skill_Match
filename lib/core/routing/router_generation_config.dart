import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/home/presentation/screens/home_shell_screen.dart';
import 'package:skillmatch/features/home/presentation/screens/home_screen.dart';
import 'package:skillmatch/features/chat_bot/presentation/screens/chat_bot_screen.dart';
import 'package:skillmatch/features/roadmap/presentation/screens/roadmap_screen.dart';
import 'package:skillmatch/features/saved_jobs/presentation/screens/saved_jobs_screen.dart';
import 'package:skillmatch/features/settings/presentation/screens/settings_screen.dart';
import 'package:skillmatch/features/notifications/presentation/screens/notifications_screen.dart';
import 'package:skillmatch/features/profile/presentation/screens/profile_screen.dart';
import 'package:skillmatch/features/profile/presentation/screens/edit_profile_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/login/login_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/forget_password/new_password_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/forget_password/password_updated_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/register/register_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/forget_password/reset_password_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/forget_password/verify_code_screen.dart';
import 'package:skillmatch/features/onboarding/presintations/screens/onboarding_screen.dart';
import 'package:skillmatch/features/splash/presintations/screens/splash_screen.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.splashScreen,
    routes: [
      GoRoute(
        path: AppRoutes.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboardingScreen,
        builder: (context, state) => OnboardingScreen(
          onFinished: () => context.go(AppRoutes.loginScreen),
        ),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.resetPasswordScreen,
        builder: (context, state) => ResetPasswordScreen(
          email: state.uri.queryParameters['email'] ?? '',
        ),
      ),
      GoRoute(
        path: AppRoutes.verifyCodeScreen,
        builder: (context, state) => VerifyCodeScreen(
          email: state.uri.queryParameters['email'] ?? '',
          isRegistration: state.uri.queryParameters['flow'] == 'register',
        ),
      ),
      GoRoute(
        path: AppRoutes.newPasswordScreen,
        builder: (context, state) =>
            NewPasswordScreen(email: state.uri.queryParameters['email'] ?? ''),
      ),
      GoRoute(
        path: AppRoutes.passwordUpdatedScreen,
        builder: (context, state) => const PasswordUpdatedScreen(),
      ),
      GoRoute(
        path: AppRoutes.settingsScreen,
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: AppRoutes.notificationsScreen,
        builder: (context, state) => const NotificationsScreen(),
      ),
      GoRoute(
        path: AppRoutes.editProfileScreen,
        builder: (context, state) => const EditProfileScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            HomeShellScreen(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.chatBotScreen,
                builder: (context, state) => const ChatBotScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.roadmapScreen,
                builder: (context, state) => const RoadmapScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.homeScreen,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.savedJobsScreen,
                builder: (context, state) => const SavedJobsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.profileScreen,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
