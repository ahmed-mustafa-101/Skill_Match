import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skillmatch/core/routing/app_routes.dart';
import 'package:skillmatch/core/routing/router_generation_config.dart';
import 'package:skillmatch/main.dart';

void main() {
  testWidgets('splash loads then onboarding advances through all pages', (
    WidgetTester tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(430, 932);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    RouterGenerationConfig.goRouter.go(AppRoutes.splashScreen);
    await tester.pumpWidget(const SkillMatchApp());
    await tester.pump();

    expect(
      find.text('Professional Compatibility and Skills Platform'),
      findsOneWidget,
    );
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.text('Turn your CV into opportunities'), findsOneWidget);
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();
    expect(find.text('Get an explainable match'), findsOneWidget);

    await tester.tap(find.text('Skip'));
    await tester.pumpAndSettle();
    expect(find.text('Let’s set up your career profile'), findsOneWidget);

    await tester.tap(find.text('Start'));
    await tester.pumpAndSettle();
    expect(find.text('Log in'), findsWidgets);
  });

  testWidgets('login can open registration and password recovery', (
    WidgetTester tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(430, 932);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    RouterGenerationConfig.goRouter.go(AppRoutes.splashScreen);
    await tester.pumpWidget(const SkillMatchApp());
    await tester.pump();
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Skip'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Not now'));
    await tester.pumpAndSettle();
    expect(find.text('Welcome back'), findsOneWidget);

    await tester.ensureVisible(find.text('Create account').last);
    await tester.tap(find.text('Create account').last);
    await tester.pumpAndSettle();
    expect(find.text('Complete sign up'), findsOneWidget);

    await tester.tap(find.text('Log in').last);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Forgot password?'));
    await tester.pumpAndSettle();
    expect(find.text('Forgot your password?'), findsOneWidget);

    await tester.enterText(
      find.byType(TextFormField).first,
      'person@example.com',
    );
    await tester.tap(find.text('Send code'));
    await tester.pumpAndSettle();
    expect(find.text('Enter verification code'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(6));
  });
}
