import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/features/main_screen/screens/main_bottom_navigation_bar.dart';
import 'package:skillmatch/features/saved_jobs/presentation/state/saved_jobs_cubit.dart';

class HomeShellScreen extends StatelessWidget {
  const HomeShellScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SavedJobsCubit(),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: AppColors.background,
          body: navigationShell,
          bottomNavigationBar: HomeBottomNavigationBar(
            currentIndex: navigationShell.currentIndex,
            onSelected: (index) => navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            ),
          ),
        ),
      ),
    );
  }
}
