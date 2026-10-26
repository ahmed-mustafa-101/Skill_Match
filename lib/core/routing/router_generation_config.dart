import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/features/home/presentation/screens/home_shell_screen.dart';
import 'package:skillmatch/features/home/presentation/screens/home_screen.dart';
import 'package:skillmatch/features/home/presentation/screens/saved_jobs_screen.dart';
import 'package:skillmatch/features/home/presentation/screens/tab_placeholder_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/login/login_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/forget_password/new_password_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/forget_password/password_updated_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/register/register_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/forget_password/reset_password_screen.dart';
import 'package:skillmatch/features/auth/presintations/screens/forget_password/verify_code_screen.dart';
import 'package:skillmatch/features/onboarding/presintations/screens/onboarding_screen.dart';
import 'package:skillmatch/features/splash/presintations/screens/splash_screen.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';

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
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            HomeShellScreen(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.chatBotScreen,
                builder: (context, state) =>
                    TabPlaceholderScreen(title: context.l10n.navChatBot),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.roadmapScreen,
                builder: (context, state) =>
                    TabPlaceholderScreen(title: context.l10n.navRoadmap),
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
                builder: (context, state) =>
                    TabPlaceholderScreen(title: context.l10n.navProfile),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
