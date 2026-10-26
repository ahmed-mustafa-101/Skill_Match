// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `SkillMatch`
  String get appName {
    return Intl.message('SkillMatch', name: 'appName', desc: '', args: []);
  }

  /// `Professional Compatibility and Skills Platform`
  String get splashTagline {
    return Intl.message(
      'Professional Compatibility and Skills Platform',
      name: 'splashTagline',
      desc: '',
      args: [],
    );
  }

  /// `SkillMatch app icon`
  String get appIconSemantic {
    return Intl.message(
      'SkillMatch app icon',
      name: 'appIconSemantic',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `A CV and phone connected by a job match`
  String get introImageSemantic {
    return Intl.message(
      'A CV and phone connected by a job match',
      name: 'introImageSemantic',
      desc: '',
      args: [],
    );
  }

  /// `Turn your CV into opportunities`
  String get introTitle {
    return Intl.message(
      'Turn your CV into opportunities',
      name: 'introTitle',
      desc: '',
      args: [],
    );
  }

  /// `See why a job fits you, what you’re missing, and what to do next.`
  String get introDescription {
    return Intl.message(
      'See why a job fits you, what you’re missing, and what to do next.',
      name: 'introDescription',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueAction {
    return Intl.message('Continue', name: 'continueAction', desc: '', args: []);
  }

  /// `Illustration of an explainable job match`
  String get matchImageSemantic {
    return Intl.message(
      'Illustration of an explainable job match',
      name: 'matchImageSemantic',
      desc: '',
      args: [],
    );
  }

  /// `Get an explainable match`
  String get matchTitle {
    return Intl.message(
      'Get an explainable match',
      name: 'matchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Not just a score — strengths, gaps, and clear next actions.`
  String get matchDescription {
    return Intl.message(
      'Not just a score — strengths, gaps, and clear next actions.',
      name: 'matchDescription',
      desc: '',
      args: [],
    );
  }

  /// `CV`
  String get profileCvLabel {
    return Intl.message('CV', name: 'profileCvLabel', desc: '', args: []);
  }

  /// `Target`
  String get profileTargetLabel {
    return Intl.message(
      'Target',
      name: 'profileTargetLabel',
      desc: '',
      args: [],
    );
  }

  /// `Roadmap`
  String get profileRoadmapLabel {
    return Intl.message(
      'Roadmap',
      name: 'profileRoadmapLabel',
      desc: '',
      args: [],
    );
  }

  /// `Let’s set up your career profile`
  String get profileTitle {
    return Intl.message(
      'Let’s set up your career profile',
      name: 'profileTitle',
      desc: '',
      args: [],
    );
  }

  /// `Upload your CV (optional)`
  String get uploadCvOptional {
    return Intl.message(
      'Upload your CV (optional)',
      name: 'uploadCvOptional',
      desc: '',
      args: [],
    );
  }

  /// `Choose your target role`
  String get chooseTargetRole {
    return Intl.message(
      'Choose your target role',
      name: 'chooseTargetRole',
      desc: '',
      args: [],
    );
  }

  /// `Get your roadmap and weekly actions`
  String get weeklyRoadmapActions {
    return Intl.message(
      'Get your roadmap and weekly actions',
      name: 'weeklyRoadmapActions',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get startAction {
    return Intl.message('Start', name: 'startAction', desc: '', args: []);
  }

  /// `Not now`
  String get notNow {
    return Intl.message('Not now', name: 'notNow', desc: '', args: []);
  }

  /// `Flutter Developer Intern`
  String get onboardingSampleJob {
    return Intl.message(
      'Flutter Developer Intern',
      name: 'onboardingSampleJob',
      desc: '',
      args: [],
    );
  }

  /// `TechNova • Cairo • Hybrid`
  String get onboardingCompanyLocation {
    return Intl.message(
      'TechNova • Cairo • Hybrid',
      name: 'onboardingCompanyLocation',
      desc: '',
      args: [],
    );
  }

  /// `Strong match`
  String get strongMatch {
    return Intl.message(
      'Strong match',
      name: 'strongMatch',
      desc: '',
      args: [],
    );
  }

  /// `Chat Bot`
  String get navChatBot {
    return Intl.message('Chat Bot', name: 'navChatBot', desc: '', args: []);
  }

  /// `Roadmap`
  String get navRoadmap {
    return Intl.message('Roadmap', name: 'navRoadmap', desc: '', args: []);
  }

  /// `Home`
  String get navHome {
    return Intl.message('Home', name: 'navHome', desc: '', args: []);
  }

  /// `Saved`
  String get navSaved {
    return Intl.message('Saved', name: 'navSaved', desc: '', args: []);
  }

  /// `Profile`
  String get navProfile {
    return Intl.message('Profile', name: 'navProfile', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Good morning, {name}`
  String homeGreeting(String name) {
    return Intl.message(
      'Good morning, $name',
      name: 'homeGreeting',
      desc: '',
      args: [name],
    );
  }

  /// `Ready to find your next opportunity?`
  String get homePrompt {
    return Intl.message(
      'Ready to find your next opportunity?',
      name: 'homePrompt',
      desc: '',
      args: [],
    );
  }

  /// `Recommended for you`
  String get recommendedForYou {
    return Intl.message(
      'Recommended for you',
      name: 'recommendedForYou',
      desc: '',
      args: [],
    );
  }

  /// `Show less`
  String get showLess {
    return Intl.message('Show less', name: 'showLess', desc: '', args: []);
  }

  /// `See all`
  String get seeAll {
    return Intl.message('See all', name: 'seeAll', desc: '', args: []);
  }

  /// `Search jobs, companies, or skills`
  String get searchHint {
    return Intl.message(
      'Search jobs, companies, or skills',
      name: 'searchHint',
      desc: '',
      args: [],
    );
  }

  /// `Filter jobs`
  String get filterJobs {
    return Intl.message('Filter jobs', name: 'filterJobs', desc: '', args: []);
  }

  /// `No jobs match your search`
  String get noJobsMatch {
    return Intl.message(
      'No jobs match your search',
      name: 'noJobsMatch',
      desc: '',
      args: [],
    );
  }

  /// `Filter jobs`
  String get filterTitle {
    return Intl.message('Filter jobs', name: 'filterTitle', desc: '', args: []);
  }

  /// `All jobs`
  String get filterAllJobs {
    return Intl.message('All jobs', name: 'filterAllJobs', desc: '', args: []);
  }

  /// `Full-time`
  String get filterFullTime {
    return Intl.message(
      'Full-time',
      name: 'filterFullTime',
      desc: '',
      args: [],
    );
  }

  /// `Internship`
  String get filterInternship {
    return Intl.message(
      'Internship',
      name: 'filterInternship',
      desc: '',
      args: [],
    );
  }

  /// `Remote`
  String get filterRemote {
    return Intl.message('Remote', name: 'filterRemote', desc: '', args: []);
  }

  /// `12 matches`
  String get matchesCount {
    return Intl.message('12 matches', name: 'matchesCount', desc: '', args: []);
  }

  /// `We found jobs that match your profile`
  String get matchesBannerTitle {
    return Intl.message(
      'We found jobs that match your profile',
      name: 'matchesBannerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Explore opportunities based on your skills and career preferences.`
  String get matchesBannerDescription {
    return Intl.message(
      'Explore opportunities based on your skills and career preferences.',
      name: 'matchesBannerDescription',
      desc: '',
      args: [],
    );
  }

  /// `View Matches`
  String get viewMatches {
    return Intl.message(
      'View Matches',
      name: 'viewMatches',
      desc: '',
      args: [],
    );
  }

  /// `Your 12 job matches are ready.`
  String get matchesReady {
    return Intl.message(
      'Your 12 job matches are ready.',
      name: 'matchesReady',
      desc: '',
      args: [],
    );
  }

  /// `Saved jobs`
  String get savedJobs {
    return Intl.message('Saved jobs', name: 'savedJobs', desc: '', args: []);
  }

  /// `No saved jobs yet`
  String get noSavedJobs {
    return Intl.message(
      'No saved jobs yet',
      name: 'noSavedJobs',
      desc: '',
      args: [],
    );
  }

  /// `Tap the bookmark on a job to save it here.`
  String get saveJobHint {
    return Intl.message(
      'Tap the bookmark on a job to save it here.',
      name: 'saveJobHint',
      desc: '',
      args: [],
    );
  }

  /// `Application for {title} is coming soon.`
  String applicationComingSoon(String title) {
    return Intl.message(
      'Application for $title is coming soon.',
      name: 'applicationComingSoon',
      desc: '',
      args: [title],
    );
  }

  /// `Save job`
  String get saveJob {
    return Intl.message('Save job', name: 'saveJob', desc: '', args: []);
  }

  /// `Remove saved job`
  String get removeSavedJob {
    return Intl.message(
      'Remove saved job',
      name: 'removeSavedJob',
      desc: '',
      args: [],
    );
  }

  /// `Apply Now`
  String get applyNow {
    return Intl.message('Apply Now', name: 'applyNow', desc: '', args: []);
  }

  /// `Junior Flutter Developer`
  String get juniorFlutterDeveloper {
    return Intl.message(
      'Junior Flutter Developer',
      name: 'juniorFlutterDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Developer Intern`
  String get mobileDeveloperIntern {
    return Intl.message(
      'Mobile Developer Intern',
      name: 'mobileDeveloperIntern',
      desc: '',
      args: [],
    );
  }

  /// `Junior Software Engineer`
  String get juniorSoftwareEngineer {
    return Intl.message(
      'Junior Software Engineer',
      name: 'juniorSoftwareEngineer',
      desc: '',
      args: [],
    );
  }

  /// `Frontend Developer`
  String get frontendDeveloper {
    return Intl.message(
      'Frontend Developer',
      name: 'frontendDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `Product Design Intern`
  String get productDesignIntern {
    return Intl.message(
      'Product Design Intern',
      name: 'productDesignIntern',
      desc: '',
      args: [],
    );
  }

  /// `Cairo`
  String get cairo {
    return Intl.message('Cairo', name: 'cairo', desc: '', args: []);
  }

  /// `Giza`
  String get giza {
    return Intl.message('Giza', name: 'giza', desc: '', args: []);
  }

  /// `Remote`
  String get remote {
    return Intl.message('Remote', name: 'remote', desc: '', args: []);
  }

  /// `0–2 years`
  String get experienceTwoYears {
    return Intl.message(
      '0–2 years',
      name: 'experienceTwoYears',
      desc: '',
      args: [],
    );
  }

  /// `Internship`
  String get experienceInternship {
    return Intl.message(
      'Internship',
      name: 'experienceInternship',
      desc: '',
      args: [],
    );
  }

  /// `Entry Level`
  String get experienceEntryLevel {
    return Intl.message(
      'Entry Level',
      name: 'experienceEntryLevel',
      desc: '',
      args: [],
    );
  }

  /// `1–3 years`
  String get experienceOneToThreeYears {
    return Intl.message(
      '1–3 years',
      name: 'experienceOneToThreeYears',
      desc: '',
      args: [],
    );
  }

  /// `Full-time`
  String get fullTime {
    return Intl.message('Full-time', name: 'fullTime', desc: '', args: []);
  }

  /// `Posted 2 days ago`
  String get postedTwoDaysAgo {
    return Intl.message(
      'Posted 2 days ago',
      name: 'postedTwoDaysAgo',
      desc: '',
      args: [],
    );
  }

  /// `Posted today`
  String get postedToday {
    return Intl.message(
      'Posted today',
      name: 'postedToday',
      desc: '',
      args: [],
    );
  }

  /// `Posted 3 days ago`
  String get postedThreeDaysAgo {
    return Intl.message(
      'Posted 3 days ago',
      name: 'postedThreeDaysAgo',
      desc: '',
      args: [],
    );
  }

  /// `Posted yesterday`
  String get postedYesterday {
    return Intl.message(
      'Posted yesterday',
      name: 'postedYesterday',
      desc: '',
      args: [],
    );
  }

  /// `Posted 4 days ago`
  String get postedFourDaysAgo {
    return Intl.message(
      'Posted 4 days ago',
      name: 'postedFourDaysAgo',
      desc: '',
      args: [],
    );
  }

  /// `Hybrid`
  String get hybrid {
    return Intl.message('Hybrid', name: 'hybrid', desc: '', args: []);
  }

  /// `Good Match`
  String get goodMatch {
    return Intl.message('Good Match', name: 'goodMatch', desc: '', args: []);
  }

  /// `Potential Match`
  String get potentialMatch {
    return Intl.message(
      'Potential Match',
      name: 'potentialMatch',
      desc: '',
      args: [],
    );
  }

  /// `Matches your Flutter & REST API skills`
  String get matchFlutterRest {
    return Intl.message(
      'Matches your Flutter & REST API skills',
      name: 'matchFlutterRest',
      desc: '',
      args: [],
    );
  }

  /// `Recommended based on your target role`
  String get matchTargetRole {
    return Intl.message(
      'Recommended based on your target role',
      name: 'matchTargetRole',
      desc: '',
      args: [],
    );
  }

  /// `Matches problem solving skills`
  String get matchProblemSolving {
    return Intl.message(
      'Matches problem solving skills',
      name: 'matchProblemSolving',
      desc: '',
      args: [],
    );
  }

  /// `Matches your web development skills`
  String get matchWebDevelopment {
    return Intl.message(
      'Matches your web development skills',
      name: 'matchWebDevelopment',
      desc: '',
      args: [],
    );
  }

  /// `Build on your design fundamentals`
  String get matchDesignFundamentals {
    return Intl.message(
      'Build on your design fundamentals',
      name: 'matchDesignFundamentals',
      desc: '',
      args: [],
    );
  }

  /// `{title} is coming soon.`
  String tabComingSoon(String title) {
    return Intl.message(
      '$title is coming soon.',
      name: 'tabComingSoon',
      desc: '',
      args: [title],
    );
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: '', args: []);
  }

  /// `Smart Career Discovery`
  String get skillMatchTagline {
    return Intl.message(
      'Smart Career Discovery',
      name: 'skillMatchTagline',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get loginTitle {
    return Intl.message('Log in', name: 'loginTitle', desc: '', args: []);
  }

  /// `SKILLMATCH PORTAL`
  String get skillMatchPortal {
    return Intl.message(
      'SKILLMATCH PORTAL',
      name: 'skillMatchPortal',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back`
  String get welcomeBack {
    return Intl.message(
      'Welcome back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Access your verified career pathways and opportunities.`
  String get loginDescription {
    return Intl.message(
      'Access your verified career pathways and opportunities.',
      name: 'loginDescription',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get emailAddress {
    return Intl.message(
      'Email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Keep me signed in`
  String get keepMeSignedIn {
    return Intl.message(
      'Keep me signed in',
      name: 'keepMeSignedIn',
      desc: '',
      args: [],
    );
  }

  /// `Only on trusted devices`
  String get trustedDevicesOnly {
    return Intl.message(
      'Only on trusted devices',
      name: 'trustedDevicesOnly',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message('or', name: 'or', desc: '', args: []);
  }

  /// `Continue with Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message('Google', name: 'google', desc: '', args: []);
  }

  /// `Google sign-in is not connected yet.`
  String get googleSignInUnavailable {
    return Intl.message(
      'Google sign-in is not connected yet.',
      name: 'googleSignInUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `New here? `
  String get newHere {
    return Intl.message('New here? ', name: 'newHere', desc: '', args: []);
  }

  /// `Create account`
  String get createAccount {
    return Intl.message(
      'Create account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `SkillMatch securely protects your verified credentials and application histories.`
  String get securityBanner {
    return Intl.message(
      'SkillMatch securely protects your verified credentials and application histories.',
      name: 'securityBanner',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get registerTitle {
    return Intl.message(
      'Create account',
      name: 'registerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Use 8+ characters`
  String get useEightCharacters {
    return Intl.message(
      'Use 8+ characters',
      name: 'useEightCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the Terms & Privacy Policy`
  String get agreeToTerms {
    return Intl.message(
      'I agree to the Terms & Privacy Policy',
      name: 'agreeToTerms',
      desc: '',
      args: [],
    );
  }

  /// `Complete sign up`
  String get completeSignUp {
    return Intl.message(
      'Complete sign up',
      name: 'completeSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Google`
  String get signUpWithGoogle {
    return Intl.message(
      'Sign up with Google',
      name: 'signUpWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Google sign-up is not connected yet.`
  String get googleSignUpUnavailable {
    return Intl.message(
      'Google sign-up is not connected yet.',
      name: 'googleSignUpUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Next, you can upload your CV (optional).`
  String get nextUploadCv {
    return Intl.message(
      'Next, you can upload your CV (optional).',
      name: 'nextUploadCv',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPasswordTitle {
    return Intl.message(
      'Reset password',
      name: 'resetPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `SkillMatch Secure Verification`
  String get secureVerification {
    return Intl.message(
      'SkillMatch Secure Verification',
      name: 'secureVerification',
      desc: '',
      args: [],
    );
  }

  /// `ACCOUNT RECOVERY`
  String get accountRecovery {
    return Intl.message(
      'ACCOUNT RECOVERY',
      name: 'accountRecovery',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgotYourPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and we’ll send you a verification code.`
  String get resetPasswordDescription {
    return Intl.message(
      'Enter your email and we’ll send you a verification code.',
      name: 'resetPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `name@example.com`
  String get emailExample {
    return Intl.message(
      'name@example.com',
      name: 'emailExample',
      desc: '',
      args: [],
    );
  }

  /// `Send code`
  String get sendCode {
    return Intl.message('Send code', name: 'sendCode', desc: '', args: []);
  }

  /// `If you don’t see the email, check Spam.`
  String get checkSpam {
    return Intl.message(
      'If you don’t see the email, check Spam.',
      name: 'checkSpam',
      desc: '',
      args: [],
    );
  }

  /// `Back to login`
  String get backToLogin {
    return Intl.message(
      'Back to login',
      name: 'backToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Verify code`
  String get verifyCodeTitle {
    return Intl.message(
      'Verify code',
      name: 'verifyCodeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter verification code`
  String get enterVerificationCode {
    return Intl.message(
      'Enter verification code',
      name: 'enterVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `We sent a 6-digit code to your email.`
  String get verificationSentGeneric {
    return Intl.message(
      'We sent a 6-digit code to your email.',
      name: 'verificationSentGeneric',
      desc: '',
      args: [],
    );
  }

  /// `We sent a 6-digit code to {email}.`
  String verificationSentToEmail(String email) {
    return Intl.message(
      'We sent a 6-digit code to $email.',
      name: 'verificationSentToEmail',
      desc: '',
      args: [email],
    );
  }

  /// `VERIFICATION CODE`
  String get verificationCodeLabel {
    return Intl.message(
      'VERIFICATION CODE',
      name: 'verificationCodeLabel',
      desc: '',
      args: [],
    );
  }

  /// `You can request a new code`
  String get requestNewCode {
    return Intl.message(
      'You can request a new code',
      name: 'requestNewCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend available in 00:{seconds}`
  String resendAvailableIn(String seconds) {
    return Intl.message(
      'Resend available in 00:$seconds',
      name: 'resendAvailableIn',
      desc: '',
      args: [seconds],
    );
  }

  /// `Resend code`
  String get resendCode {
    return Intl.message('Resend code', name: 'resendCode', desc: '', args: []);
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Change email`
  String get changeEmail {
    return Intl.message(
      'Change email',
      name: 'changeEmail',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t receive it? Check Spam.`
  String get didNotReceiveCheckSpam {
    return Intl.message(
      'Didn’t receive it? Check Spam.',
      name: 'didNotReceiveCheckSpam',
      desc: '',
      args: [],
    );
  }

  /// `Account creation is not connected yet.`
  String get accountCreationUnavailable {
    return Intl.message(
      'Account creation is not connected yet.',
      name: 'accountCreationUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPasswordTitle {
    return Intl.message(
      'New password',
      name: 'newPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Update password`
  String get updatePassword {
    return Intl.message(
      'Update password',
      name: 'updatePassword',
      desc: '',
      args: [],
    );
  }

  /// `Create a new password`
  String get createNewPassword {
    return Intl.message(
      'Create a new password',
      name: 'createNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Choose a strong password you haven’t used before.`
  String get chooseStrongPassword {
    return Intl.message(
      'Choose a strong password you haven’t used before.',
      name: 'chooseStrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPassword {
    return Intl.message(
      'New password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Use at least 8 characters.`
  String get useAtLeastEightCharacters {
    return Intl.message(
      'Use at least 8 characters.',
      name: 'useAtLeastEightCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm new password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password updated`
  String get passwordUpdated {
    return Intl.message(
      'Password updated',
      name: 'passwordUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been changed successfully. You can now log in with your new password.`
  String get passwordUpdatedDescription {
    return Intl.message(
      'Your password has been changed successfully. You can now log in with your new password.',
      name: 'passwordUpdatedDescription',
      desc: '',
      args: [],
    );
  }

  /// `Password requirements`
  String get passwordRequirements {
    return Intl.message(
      'Password requirements',
      name: 'passwordRequirements',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 characters`
  String get atLeastEightCharacters {
    return Intl.message(
      'At least 8 characters',
      name: 'atLeastEightCharacters',
      desc: '',
      args: [],
    );
  }

  /// `At least one number`
  String get atLeastOneNumber {
    return Intl.message(
      'At least one number',
      name: 'atLeastOneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must match`
  String get passwordsMustMatch {
    return Intl.message(
      'Passwords must match',
      name: 'passwordsMustMatch',
      desc: '',
      args: [],
    );
  }

  /// `Email is required.`
  String get emailRequired {
    return Intl.message(
      'Email is required.',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email address.`
  String get validEmailRequired {
    return Intl.message(
      'Enter a valid email address.',
      name: 'validEmailRequired',
      desc: '',
      args: [],
    );
  }

  /// `This field is required.`
  String get fieldRequired {
    return Intl.message(
      'This field is required.',
      name: 'fieldRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password is required.`
  String get passwordRequired {
    return Intl.message(
      'Password is required.',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Use at least 8 characters.`
  String get passwordMinimumLength {
    return Intl.message(
      'Use at least 8 characters.',
      name: 'passwordMinimumLength',
      desc: '',
      args: [],
    );
  }

  /// `Include at least one number.`
  String get passwordIncludeNumber {
    return Intl.message(
      'Include at least one number.',
      name: 'passwordIncludeNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your password.`
  String get confirmPasswordRequired {
    return Intl.message(
      'Please confirm your password.',
      name: 'confirmPasswordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match.`
  String get passwordsDoNotMatch {
    return Intl.message(
      'Passwords do not match.',
      name: 'passwordsDoNotMatch',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
