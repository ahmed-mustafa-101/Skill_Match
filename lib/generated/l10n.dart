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

  /// `SkillMatch AI`
  String get chatBotAssistantName {
    return Intl.message(
      'SkillMatch AI',
      name: 'chatBotAssistantName',
      desc: '',
      args: [],
    );
  }

  /// `Your career copilot`
  String get chatBotAssistantSubtitle {
    return Intl.message(
      'Your career copilot',
      name: 'chatBotAssistantSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `New conversation`
  String get chatBotNewConversation {
    return Intl.message(
      'New conversation',
      name: 'chatBotNewConversation',
      desc: '',
      args: [],
    );
  }

  /// `Your next opportunity\nstarts here.`
  String get chatBotWelcomeTitle {
    return Intl.message(
      'Your next opportunity\nstarts here.',
      name: 'chatBotWelcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ask me about your career, skills, or job search. Let’s make your next move count.`
  String get chatBotWelcomeDescription {
    return Intl.message(
      'Ask me about your career, skills, or job search. Let’s make your next move count.',
      name: 'chatBotWelcomeDescription',
      desc: '',
      args: [],
    );
  }

  /// `TRY ASKING`
  String get chatBotTryAsking {
    return Intl.message(
      'TRY ASKING',
      name: 'chatBotTryAsking',
      desc: '',
      args: [],
    );
  }

  /// `Find matching jobs`
  String get chatBotPromptJobs {
    return Intl.message(
      'Find matching jobs',
      name: 'chatBotPromptJobs',
      desc: '',
      args: [],
    );
  }

  /// `Improve my CV`
  String get chatBotPromptCv {
    return Intl.message(
      'Improve my CV',
      name: 'chatBotPromptCv',
      desc: '',
      args: [],
    );
  }

  /// `Plan my career path`
  String get chatBotPromptCareer {
    return Intl.message(
      'Plan my career path',
      name: 'chatBotPromptCareer',
      desc: '',
      args: [],
    );
  }

  /// `Practice an interview`
  String get chatBotPromptInterview {
    return Intl.message(
      'Practice an interview',
      name: 'chatBotPromptInterview',
      desc: '',
      args: [],
    );
  }

  /// `Ask anything about your career...`
  String get chatBotInputHint {
    return Intl.message(
      'Ask anything about your career...',
      name: 'chatBotInputHint',
      desc: '',
      args: [],
    );
  }

  /// `Send message`
  String get chatBotSendMessage {
    return Intl.message(
      'Send message',
      name: 'chatBotSendMessage',
      desc: '',
      args: [],
    );
  }

  /// `AI can make mistakes. Double-check important information.`
  String get chatBotDisclaimer {
    return Intl.message(
      'AI can make mistakes. Double-check important information.',
      name: 'chatBotDisclaimer',
      desc: '',
      args: [],
    );
  }

  /// `A strong CV starts with a clear summary, measurable achievements, and skills tailored to the role. Share the job title you are targeting and I can suggest sections to improve.`
  String get chatBotCvReply {
    return Intl.message(
      'A strong CV starts with a clear summary, measurable achievements, and skills tailored to the role. Share the job title you are targeting and I can suggest sections to improve.',
      name: 'chatBotCvReply',
      desc: '',
      args: [],
    );
  }

  /// `Let’s prepare together. Start by reviewing the role requirements, then practice explaining one project: the challenge, your approach, and the result.`
  String get chatBotInterviewReply {
    return Intl.message(
      'Let’s prepare together. Start by reviewing the role requirements, then practice explaining one project: the challenge, your approach, and the result.',
      name: 'chatBotInterviewReply',
      desc: '',
      args: [],
    );
  }

  /// `A good next step is to match your strongest skills with the role requirements, then focus on one or two gaps. Which role or skill would you like to explore first?`
  String get chatBotCareerReply {
    return Intl.message(
      'A good next step is to match your strongest skills with the role requirements, then focus on one or two gaps. Which role or skill would you like to explore first?',
      name: 'chatBotCareerReply',
      desc: '',
      args: [],
    );
  }

  /// `Thanks for sharing. I can help you explore career options, prepare for interviews, improve your CV, or plan the skills to learn next. What would you like to focus on?`
  String get chatBotDefaultReply {
    return Intl.message(
      'Thanks for sharing. I can help you explore career options, prepare for interviews, improve your CV, or plan the skills to learn next. What would you like to focus on?',
      name: 'chatBotDefaultReply',
      desc: '',
      args: [],
    );
  }

  /// `Mark all read`
  String get notificationsMarkAllRead {
    return Intl.message(
      'Mark all read',
      name: 'notificationsMarkAllRead',
      desc: '',
      args: [],
    );
  }

  /// `No notifications in this category.`
  String get notificationsEmptyCategory {
    return Intl.message(
      'No notifications in this category.',
      name: 'notificationsEmptyCategory',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get notificationCategoryAll {
    return Intl.message(
      'All',
      name: 'notificationCategoryAll',
      desc: '',
      args: [],
    );
  }

  /// `Jobs`
  String get notificationCategoryJobs {
    return Intl.message(
      'Jobs',
      name: 'notificationCategoryJobs',
      desc: '',
      args: [],
    );
  }

  /// `Applications`
  String get notificationCategoryApplications {
    return Intl.message(
      'Applications',
      name: 'notificationCategoryApplications',
      desc: '',
      args: [],
    );
  }

  /// `Roadmap`
  String get notificationCategoryRoadmap {
    return Intl.message(
      'Roadmap',
      name: 'notificationCategoryRoadmap',
      desc: '',
      args: [],
    );
  }

  /// `CV`
  String get notificationCategoryCv {
    return Intl.message(
      'CV',
      name: 'notificationCategoryCv',
      desc: '',
      args: [],
    );
  }

  /// `New jobs match your profile`
  String get notificationNewJobsTitle {
    return Intl.message(
      'New jobs match your profile',
      name: 'notificationNewJobsTitle',
      desc: '',
      args: [],
    );
  }

  /// `We found 8 Flutter opportunities based on your skills.`
  String get notificationNewJobsMessage {
    return Intl.message(
      'We found 8 Flutter opportunities based on your skills.',
      name: 'notificationNewJobsMessage',
      desc: '',
      args: [],
    );
  }

  /// `View Jobs`
  String get notificationViewJobs {
    return Intl.message(
      'View Jobs',
      name: 'notificationViewJobs',
      desc: '',
      args: [],
    );
  }

  /// `Your roadmap has been updated`
  String get notificationRoadmapTitle {
    return Intl.message(
      'Your roadmap has been updated',
      name: 'notificationRoadmapTitle',
      desc: '',
      args: [],
    );
  }

  /// `Testing is now one of your highest-priority skills.`
  String get notificationRoadmapMessage {
    return Intl.message(
      'Testing is now one of your highest-priority skills.',
      name: 'notificationRoadmapMessage',
      desc: '',
      args: [],
    );
  }

  /// `View Roadmap`
  String get notificationViewRoadmap {
    return Intl.message(
      'View Roadmap',
      name: 'notificationViewRoadmap',
      desc: '',
      args: [],
    );
  }

  /// `CV analysis completed`
  String get notificationCvTitle {
    return Intl.message(
      'CV analysis completed',
      name: 'notificationCvTitle',
      desc: '',
      args: [],
    );
  }

  /// `We extracted 12 skills and updated your career profile.`
  String get notificationCvMessage {
    return Intl.message(
      'We extracted 12 skills and updated your career profile.',
      name: 'notificationCvMessage',
      desc: '',
      args: [],
    );
  }

  /// `Review CV`
  String get notificationReviewCv {
    return Intl.message(
      'Review CV',
      name: 'notificationReviewCv',
      desc: '',
      args: [],
    );
  }

  /// `Application status updated`
  String get notificationApplicationTitle {
    return Intl.message(
      'Application status updated',
      name: 'notificationApplicationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your TechNova application is now In Review.`
  String get notificationApplicationMessage {
    return Intl.message(
      'Your TechNova application is now In Review.',
      name: 'notificationApplicationMessage',
      desc: '',
      args: [],
    );
  }

  /// `View Application`
  String get notificationViewApplication {
    return Intl.message(
      'View Application',
      name: 'notificationViewApplication',
      desc: '',
      args: [],
    );
  }

  /// `10 min ago`
  String get notificationTenMinutesAgo {
    return Intl.message(
      '10 min ago',
      name: 'notificationTenMinutesAgo',
      desc: '',
      args: [],
    );
  }

  /// `2 hrs ago`
  String get notificationTwoHoursAgo {
    return Intl.message(
      '2 hrs ago',
      name: 'notificationTwoHoursAgo',
      desc: '',
      args: [],
    );
  }

  /// `4 hrs ago`
  String get notificationFourHoursAgo {
    return Intl.message(
      '4 hrs ago',
      name: 'notificationFourHoursAgo',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday • 3:45 PM`
  String get notificationYesterdayAt {
    return Intl.message(
      'Yesterday • 3:45 PM',
      name: 'notificationYesterdayAt',
      desc: '',
      args: [],
    );
  }

  /// `TODAY`
  String get notificationToday {
    return Intl.message('TODAY', name: 'notificationToday', desc: '', args: []);
  }

  /// `YESTERDAY`
  String get notificationYesterday {
    return Intl.message(
      'YESTERDAY',
      name: 'notificationYesterday',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get settingsBack {
    return Intl.message('Back', name: 'settingsBack', desc: '', args: []);
  }

  /// `Settings options`
  String get settingsOptions {
    return Intl.message(
      'Settings options',
      name: 'settingsOptions',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get settingsAccount {
    return Intl.message('Account', name: 'settingsAccount', desc: '', args: []);
  }

  /// `Change Password`
  String get settingsChangePassword {
    return Intl.message(
      'Change Password',
      name: 'settingsChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `Preferences`
  String get settingsPreferences {
    return Intl.message(
      'Preferences',
      name: 'settingsPreferences',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get settingsTheme {
    return Intl.message('Theme', name: 'settingsTheme', desc: '', args: []);
  }

  /// `Language`
  String get settingsLanguage {
    return Intl.message(
      'Language',
      name: 'settingsLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Privacy & Support`
  String get settingsPrivacySupport {
    return Intl.message(
      'Privacy & Support',
      name: 'settingsPrivacySupport',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get settingsPrivacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'settingsPrivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get settingsContactUs {
    return Intl.message(
      'Contact Us',
      name: 'settingsContactUs',
      desc: '',
      args: [],
    );
  }

  /// `Follow Us`
  String get settingsFollowUs {
    return Intl.message(
      'Follow Us',
      name: 'settingsFollowUs',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get settingsLogout {
    return Intl.message('Log Out', name: 'settingsLogout', desc: '', args: []);
  }

  /// `Are you sure you want to log out?`
  String get settingsLogoutConfirm {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'settingsLogoutConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get settingsCancel {
    return Intl.message('Cancel', name: 'settingsCancel', desc: '', args: []);
  }

  /// `Manage your account preferences.`
  String get settingsManagePreferences {
    return Intl.message(
      'Manage your account preferences.',
      name: 'settingsManagePreferences',
      desc: '',
      args: [],
    );
  }

  /// `© 2025 SkillMatch. All rights reserved.`
  String get settingsCopyright {
    return Intl.message(
      '© 2025 SkillMatch. All rights reserved.',
      name: 'settingsCopyright',
      desc: '',
      args: [],
    );
  }

  /// `Choose language`
  String get settingsChooseLanguage {
    return Intl.message(
      'Choose language',
      name: 'settingsChooseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get settingsLanguageEnglish {
    return Intl.message(
      'English',
      name: 'settingsLanguageEnglish',
      desc: '',
      args: [],
    );
  }

  /// `العربية`
  String get settingsLanguageArabic {
    return Intl.message(
      'العربية',
      name: 'settingsLanguageArabic',
      desc: '',
      args: [],
    );
  }

  /// `Search jobs`
  String get savedSearchJobs {
    return Intl.message(
      'Search jobs',
      name: 'savedSearchJobs',
      desc: '',
      args: [],
    );
  }

  /// `Close search`
  String get savedCloseSearch {
    return Intl.message(
      'Close search',
      name: 'savedCloseSearch',
      desc: '',
      args: [],
    );
  }

  /// `Saved Jobs`
  String get savedJobsTitle {
    return Intl.message(
      'Saved Jobs',
      name: 'savedJobsTitle',
      desc: '',
      args: [],
    );
  }

  /// `No applications yet`
  String get savedApplicationsEmptyTitle {
    return Intl.message(
      'No applications yet',
      name: 'savedApplicationsEmptyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Jobs you apply to will appear here.`
  String get savedApplicationsEmptyDescription {
    return Intl.message(
      'Jobs you apply to will appear here.',
      name: 'savedApplicationsEmptyDescription',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get savedTab {
    return Intl.message('Saved', name: 'savedTab', desc: '', args: []);
  }

  /// `Applied`
  String get appliedTab {
    return Intl.message('Applied', name: 'appliedTab', desc: '', args: []);
  }

  /// `{count} saved opportunities`
  String savedJobCount(String count) {
    return Intl.message(
      '$count saved opportunities',
      name: 'savedJobCount',
      desc: '',
      args: [count],
    );
  }

  /// `{count} applications`
  String applicationCount(String count) {
    return Intl.message(
      '$count applications',
      name: 'applicationCount',
      desc: '',
      args: [count],
    );
  }

  /// `Recommended`
  String get savedSortRecommended {
    return Intl.message(
      'Recommended',
      name: 'savedSortRecommended',
      desc: '',
      args: [],
    );
  }

  /// `Best match`
  String get savedSortBestMatch {
    return Intl.message(
      'Best match',
      name: 'savedSortBestMatch',
      desc: '',
      args: [],
    );
  }

  /// `Title A–Z`
  String get savedSortTitle {
    return Intl.message(
      'Title A–Z',
      name: 'savedSortTitle',
      desc: '',
      args: [],
    );
  }

  /// `All statuses`
  String get savedStatusAll {
    return Intl.message(
      'All statuses',
      name: 'savedStatusAll',
      desc: '',
      args: [],
    );
  }

  /// `Applied`
  String get savedStatusApplied {
    return Intl.message(
      'Applied',
      name: 'savedStatusApplied',
      desc: '',
      args: [],
    );
  }

  /// `In Review`
  String get savedStatusInReview {
    return Intl.message(
      'In Review',
      name: 'savedStatusInReview',
      desc: '',
      args: [],
    );
  }

  /// `Interview`
  String get savedStatusInterview {
    return Intl.message(
      'Interview',
      name: 'savedStatusInterview',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get savedStatusRejected {
    return Intl.message(
      'Rejected',
      name: 'savedStatusRejected',
      desc: '',
      args: [],
    );
  }

  /// `Offer`
  String get savedStatusOffer {
    return Intl.message('Offer', name: 'savedStatusOffer', desc: '', args: []);
  }

  /// `Remove from saved jobs`
  String get savedRemoveFromSaved {
    return Intl.message(
      'Remove from saved jobs',
      name: 'savedRemoveFromSaved',
      desc: '',
      args: [],
    );
  }

  /// `Saved to your list`
  String get savedToYourList {
    return Intl.message(
      'Saved to your list',
      name: 'savedToYourList',
      desc: '',
      args: [],
    );
  }

  /// `Apply Now`
  String get savedApplyNow {
    return Intl.message('Apply Now', name: 'savedApplyNow', desc: '', args: []);
  }

  /// `View application`
  String get savedViewApplication {
    return Intl.message(
      'View application',
      name: 'savedViewApplication',
      desc: '',
      args: [],
    );
  }

  /// `Application details are coming soon.`
  String get savedApplicationDetailsSoon {
    return Intl.message(
      'Application details are coming soon.',
      name: 'savedApplicationDetailsSoon',
      desc: '',
      args: [],
    );
  }

  /// `Reset weekly tasks`
  String get roadmapResetTasks {
    return Intl.message(
      'Reset weekly tasks',
      name: 'roadmapResetTasks',
      desc: '',
      args: [],
    );
  }

  /// `TARGET ROLE`
  String get roadmapTargetRole {
    return Intl.message(
      'TARGET ROLE',
      name: 'roadmapTargetRole',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get roadmapChange {
    return Intl.message('Change', name: 'roadmapChange', desc: '', args: []);
  }

  /// `Your roadmap is based on your current skills and job requirements.`
  String get roadmapRoleDescription {
    return Intl.message(
      'Your roadmap is based on your current skills and job requirements.',
      name: 'roadmapRoleDescription',
      desc: '',
      args: [],
    );
  }

  /// `Your progress`
  String get roadmapYourProgress {
    return Intl.message(
      'Your progress',
      name: 'roadmapYourProgress',
      desc: '',
      args: [],
    );
  }

  /// `{completed} of {total} milestones completed`
  String roadmapProgressSummary(String completed, String total) {
    return Intl.message(
      '$completed of $total milestones completed',
      name: 'roadmapProgressSummary',
      desc: '',
      args: [completed, total],
    );
  }

  /// `Your learning path`
  String get roadmapLearningPath {
    return Intl.message(
      'Your learning path',
      name: 'roadmapLearningPath',
      desc: '',
      args: [],
    );
  }

  /// `Follow these steps to become a stronger candidate.`
  String get roadmapLearningPathDescription {
    return Intl.message(
      'Follow these steps to become a stronger candidate.',
      name: 'roadmapLearningPathDescription',
      desc: '',
      args: [],
    );
  }

  /// `Dart Foundations`
  String get roadmapDartFoundations {
    return Intl.message(
      'Dart Foundations',
      name: 'roadmapDartFoundations',
      desc: '',
      args: [],
    );
  }

  /// `Core language concepts, async programming, and null safety.`
  String get roadmapDartFoundationsDescription {
    return Intl.message(
      'Core language concepts, async programming, and null safety.',
      name: 'roadmapDartFoundationsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Fundamentals`
  String get roadmapFlutterFundamentals {
    return Intl.message(
      'Flutter Fundamentals',
      name: 'roadmapFlutterFundamentals',
      desc: '',
      args: [],
    );
  }

  /// `Widgets, layouts, navigation, forms, and API integration.`
  String get roadmapFlutterFundamentalsDescription {
    return Intl.message(
      'Widgets, layouts, navigation, forms, and API integration.',
      name: 'roadmapFlutterFundamentalsDescription',
      desc: '',
      args: [],
    );
  }

  /// `State Management`
  String get roadmapStateManagement {
    return Intl.message(
      'State Management',
      name: 'roadmapStateManagement',
      desc: '',
      args: [],
    );
  }

  /// `Testing`
  String get roadmapTesting {
    return Intl.message('Testing', name: 'roadmapTesting', desc: '', args: []);
  }

  /// `Unit testing, widget testing, and testable architecture.`
  String get roadmapTestingDescription {
    return Intl.message(
      'Unit testing, widget testing, and testable architecture.',
      name: 'roadmapTestingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Clean Architecture`
  String get roadmapCleanArchitecture {
    return Intl.message(
      'Clean Architecture',
      name: 'roadmapCleanArchitecture',
      desc: '',
      args: [],
    );
  }

  /// `Structure scalable Flutter projects using clear architectural layers.`
  String get roadmapCleanArchitectureDescription {
    return Intl.message(
      'Structure scalable Flutter projects using clear architectural layers.',
      name: 'roadmapCleanArchitectureDescription',
      desc: '',
      args: [],
    );
  }

  /// `CI/CD`
  String get roadmapCiCd {
    return Intl.message('CI/CD', name: 'roadmapCiCd', desc: '', args: []);
  }

  /// `Automate builds, testing, and deployment. Frequently requested in target jobs.`
  String get roadmapCiCdDescription {
    return Intl.message(
      'Automate builds, testing, and deployment. Frequently requested in target jobs.',
      name: 'roadmapCiCdDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ready to Apply`
  String get roadmapReadyToApply {
    return Intl.message(
      'Ready to Apply',
      name: 'roadmapReadyToApply',
      desc: '',
      args: [],
    );
  }

  /// `Complete the priority milestones to strengthen your profile.`
  String get roadmapReadyToApplyDescription {
    return Intl.message(
      'Complete the priority milestones to strengthen your profile.',
      name: 'roadmapReadyToApplyDescription',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get roadmapStatusCompleted {
    return Intl.message(
      'Completed',
      name: 'roadmapStatusCompleted',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get roadmapStatusInProgress {
    return Intl.message(
      'In Progress',
      name: 'roadmapStatusInProgress',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get roadmapStatusNext {
    return Intl.message('Next', name: 'roadmapStatusNext', desc: '', args: []);
  }

  /// `Upcoming`
  String get roadmapStatusUpcoming {
    return Intl.message(
      'Upcoming',
      name: 'roadmapStatusUpcoming',
      desc: '',
      args: [],
    );
  }

  /// `High priority gap`
  String get roadmapHighPriorityGap {
    return Intl.message(
      'High priority gap',
      name: 'roadmapHighPriorityGap',
      desc: '',
      args: [],
    );
  }

  /// `Roadmap Insight`
  String get roadmapInsightTitle {
    return Intl.message(
      'Roadmap Insight',
      name: 'roadmapInsightTitle',
      desc: '',
      args: [],
    );
  }

  /// `AI ADVISORY`
  String get roadmapAiAdvisory {
    return Intl.message(
      'AI ADVISORY',
      name: 'roadmapAiAdvisory',
      desc: '',
      args: [],
    );
  }

  /// `Testing and CI/CD are currently your highest-impact skill gaps for {role} roles.`
  String roadmapInsightDescription(String role) {
    return Intl.message(
      'Testing and CI/CD are currently your highest-impact skill gaps for $role roles.',
      name: 'roadmapInsightDescription',
      desc: '',
      args: [role],
    );
  }

  /// `Ask Chat Bot`
  String get roadmapAskChatBot {
    return Intl.message(
      'Ask Chat Bot',
      name: 'roadmapAskChatBot',
      desc: '',
      args: [],
    );
  }

  /// `Choose your target role`
  String get roadmapChooseTargetRole {
    return Intl.message(
      'Choose your target role',
      name: 'roadmapChooseTargetRole',
      desc: '',
      args: [],
    );
  }

  /// `Focus for this week`
  String get roadmapFocusThisWeek {
    return Intl.message(
      'Focus for this week',
      name: 'roadmapFocusThisWeek',
      desc: '',
      args: [],
    );
  }

  /// `PRIORITY`
  String get roadmapPriority {
    return Intl.message(
      'PRIORITY',
      name: 'roadmapPriority',
      desc: '',
      args: [],
    );
  }

  /// `Estimated: {time}`
  String roadmapEstimatedTime(String time) {
    return Intl.message(
      'Estimated: $time',
      name: 'roadmapEstimatedTime',
      desc: '',
      args: [time],
    );
  }

  /// `Why this matters: `
  String get roadmapWhyThisMatters {
    return Intl.message(
      'Why this matters: ',
      name: 'roadmapWhyThisMatters',
      desc: '',
      args: [],
    );
  }

  /// `State management appears frequently in Flutter roles that match your profile.`
  String get roadmapWhyThisMattersDescription {
    return Intl.message(
      'State management appears frequently in Flutter roles that match your profile.',
      name: 'roadmapWhyThisMattersDescription',
      desc: '',
      args: [],
    );
  }

  /// `View Tasks`
  String get roadmapViewTasks {
    return Intl.message(
      'View Tasks',
      name: 'roadmapViewTasks',
      desc: '',
      args: [],
    );
  }

  /// `State Management tasks`
  String get roadmapTasksTitle {
    return Intl.message(
      'State Management tasks',
      name: 'roadmapTasksTitle',
      desc: '',
      args: [],
    );
  }

  /// `Learn Bloc fundamentals`
  String get roadmapTaskLearnBloc {
    return Intl.message(
      'Learn Bloc fundamentals',
      name: 'roadmapTaskLearnBloc',
      desc: '',
      args: [],
    );
  }

  /// `Implement Bloc in a small feature`
  String get roadmapTaskImplementBloc {
    return Intl.message(
      'Implement Bloc in a small feature',
      name: 'roadmapTaskImplementBloc',
      desc: '',
      args: [],
    );
  }

  /// `Refactor one existing project`
  String get roadmapTaskRefactorProject {
    return Intl.message(
      'Refactor one existing project',
      name: 'roadmapTaskRefactorProject',
      desc: '',
      args: [],
    );
  }

  /// `Async`
  String get roadmapTagAsync {
    return Intl.message('Async', name: 'roadmapTagAsync', desc: '', args: []);
  }

  /// `OOP`
  String get roadmapTagOop {
    return Intl.message('OOP', name: 'roadmapTagOop', desc: '', args: []);
  }

  /// `REST APIs`
  String get roadmapTagRestApis {
    return Intl.message(
      'REST APIs',
      name: 'roadmapTagRestApis',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Developer`
  String get roadmapRoleMobileDeveloper {
    return Intl.message(
      'Mobile Developer',
      name: 'roadmapRoleMobileDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `Frontend Developer`
  String get roadmapRoleFrontendDeveloper {
    return Intl.message(
      'Frontend Developer',
      name: 'roadmapRoleFrontendDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `Software Engineer`
  String get roadmapRoleSoftwareEngineer {
    return Intl.message(
      'Software Engineer',
      name: 'roadmapRoleSoftwareEngineer',
      desc: '',
      args: [],
    );
  }

  /// `Candidate Profile`
  String get profileCandidateTitle {
    return Intl.message(
      'Candidate Profile',
      name: 'profileCandidateTitle',
      desc: '',
      args: [],
    );
  }

  /// `Profile settings`
  String get profileSettingsTooltip {
    return Intl.message(
      'Profile settings',
      name: 'profileSettingsTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed Mohamed`
  String get profileName {
    return Intl.message(
      'Ahmed Mohamed',
      name: 'profileName',
      desc: '',
      args: [],
    );
  }

  /// `Junior Flutter Developer`
  String get profileRole {
    return Intl.message(
      'Junior Flutter Developer',
      name: 'profileRole',
      desc: '',
      args: [],
    );
  }

  /// `Cairo, Egypt`
  String get profileLocation {
    return Intl.message(
      'Cairo, Egypt',
      name: 'profileLocation',
      desc: '',
      args: [],
    );
  }

  /// `Looking for Flutter and Mobile Development opportunities.`
  String get profileLookingFor {
    return Intl.message(
      'Looking for Flutter and Mobile Development opportunities.',
      name: 'profileLookingFor',
      desc: '',
      args: [],
    );
  }

  /// `Entry Level`
  String get profileEntryLevel {
    return Intl.message(
      'Entry Level',
      name: 'profileEntryLevel',
      desc: '',
      args: [],
    );
  }

  /// `GitHub`
  String get profileGithub {
    return Intl.message('GitHub', name: 'profileGithub', desc: '', args: []);
  }

  /// `LinkedIn`
  String get profileLinkedin {
    return Intl.message(
      'LinkedIn',
      name: 'profileLinkedin',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get profileEdit {
    return Intl.message(
      'Edit Profile',
      name: 'profileEdit',
      desc: '',
      args: [],
    );
  }

  /// `Good`
  String get profileCvGood {
    return Intl.message('Good', name: 'profileCvGood', desc: '', args: []);
  }

  /// `Analyzed • Updated 5 days ago`
  String get profileCvAnalyzedUpdated {
    return Intl.message(
      'Analyzed • Updated 5 days ago',
      name: 'profileCvAnalyzedUpdated',
      desc: '',
      args: [],
    );
  }

  /// `View CV`
  String get profileViewCv {
    return Intl.message('View CV', name: 'profileViewCv', desc: '', args: []);
  }

  /// `Replace CV`
  String get profileReplaceCv {
    return Intl.message(
      'Replace CV',
      name: 'profileReplaceCv',
      desc: '',
      args: [],
    );
  }

  /// `Career Preferences`
  String get profileCareerPreferences {
    return Intl.message(
      'Career Preferences',
      name: 'profileCareerPreferences',
      desc: '',
      args: [],
    );
  }

  /// `Target role`
  String get profileTargetRole {
    return Intl.message(
      'Target role',
      name: 'profileTargetRole',
      desc: '',
      args: [],
    );
  }

  /// `Job type`
  String get profileJobType {
    return Intl.message('Job type', name: 'profileJobType', desc: '', args: []);
  }

  /// `Full-time / Internship`
  String get profileFullTimeInternship {
    return Intl.message(
      'Full-time / Internship',
      name: 'profileFullTimeInternship',
      desc: '',
      args: [],
    );
  }

  /// `Preferred location`
  String get profilePreferredLocation {
    return Intl.message(
      'Preferred location',
      name: 'profilePreferredLocation',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get profileExperience {
    return Intl.message(
      'Experience',
      name: 'profileExperience',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get profileEducation {
    return Intl.message(
      'Education',
      name: 'profileEducation',
      desc: '',
      args: [],
    );
  }

  /// `Excellent`
  String get profileExcellent {
    return Intl.message(
      'Excellent',
      name: 'profileExcellent',
      desc: '',
      args: [],
    );
  }

  /// `Bachelor of Computer Science`
  String get profileBachelorComputerScience {
    return Intl.message(
      'Bachelor of Computer Science',
      name: 'profileBachelorComputerScience',
      desc: '',
      args: [],
    );
  }

  /// `Cairo University`
  String get profileCairoUniversity {
    return Intl.message(
      'Cairo University',
      name: 'profileCairoUniversity',
      desc: '',
      args: [],
    );
  }

  /// `2021 – 2025 • GPA: 3.4 / 4.0`
  String get profileGpa {
    return Intl.message(
      '2021 – 2025 • GPA: 3.4 / 4.0',
      name: 'profileGpa',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get profileExperienceSection {
    return Intl.message(
      'Experience',
      name: 'profileExperienceSection',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Developer Intern`
  String get profileFlutterIntern {
    return Intl.message(
      'Flutter Developer Intern',
      name: 'profileFlutterIntern',
      desc: '',
      args: [],
    );
  }

  /// `Jun 2025 – Sep 2025`
  String get profileExperienceDates {
    return Intl.message(
      'Jun 2025 – Sep 2025',
      name: 'profileExperienceDates',
      desc: '',
      args: [],
    );
  }

  /// `Tech Solutions`
  String get profileTechSolutions {
    return Intl.message(
      'Tech Solutions',
      name: 'profileTechSolutions',
      desc: '',
      args: [],
    );
  }

  /// `Built mobile features and integrated REST APIs.`
  String get profileExperienceDescription {
    return Intl.message(
      'Built mobile features and integrated REST APIs.',
      name: 'profileExperienceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Projects`
  String get profileProjects {
    return Intl.message(
      'Projects',
      name: 'profileProjects',
      desc: '',
      args: [],
    );
  }

  /// `Needs Improvement`
  String get profileNeedsImprovement {
    return Intl.message(
      'Needs Improvement',
      name: 'profileNeedsImprovement',
      desc: '',
      args: [],
    );
  }

  /// `Job Finder App`
  String get profileJobFinderApp {
    return Intl.message(
      'Job Finder App',
      name: 'profileJobFinderApp',
      desc: '',
      args: [],
    );
  }

  /// `Flutter application for discovering and saving job opportunities.`
  String get profileJobFinderDescription {
    return Intl.message(
      'Flutter application for discovering and saving job opportunities.',
      name: 'profileJobFinderDescription',
      desc: '',
      args: [],
    );
  }

  /// `View project →`
  String get profileViewProject {
    return Intl.message(
      'View project →',
      name: 'profileViewProject',
      desc: '',
      args: [],
    );
  }

  /// `Add measurable outcomes or project links to strengthen this section.`
  String get profileProjectSuggestion {
    return Intl.message(
      'Add measurable outcomes or project links to strengthen this section.',
      name: 'profileProjectSuggestion',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get profileSkills {
    return Intl.message('Skills', name: 'profileSkills', desc: '', args: []);
  }

  /// `From CV`
  String get profileFromCv {
    return Intl.message('From CV', name: 'profileFromCv', desc: '', args: []);
  }

  /// `+ Add skill`
  String get profileAddSkill {
    return Intl.message(
      '+ Add skill',
      name: 'profileAddSkill',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfileTitle {
    return Intl.message(
      'Edit Profile',
      name: 'editProfileTitle',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get editProfilePersonalInformation {
    return Intl.message(
      'Personal Information',
      name: 'editProfilePersonalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get editProfileFullName {
    return Intl.message(
      'Full Name',
      name: 'editProfileFullName',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get editProfileAge {
    return Intl.message('Age', name: 'editProfileAge', desc: '', args: []);
  }

  /// `Enter a valid age`
  String get editProfileInvalidAge {
    return Intl.message(
      'Enter a valid age',
      name: 'editProfileInvalidAge',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get editProfileGender {
    return Intl.message(
      'Gender',
      name: 'editProfileGender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get editProfileMale {
    return Intl.message('Male', name: 'editProfileMale', desc: '', args: []);
  }

  /// `Female`
  String get editProfileFemale {
    return Intl.message(
      'Female',
      name: 'editProfileFemale',
      desc: '',
      args: [],
    );
  }

  /// `Prefer not to say`
  String get editProfilePreferNotToSay {
    return Intl.message(
      'Prefer not to say',
      name: 'editProfilePreferNotToSay',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get editProfilePhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'editProfilePhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Professional Information`
  String get editProfileProfessionalInformation {
    return Intl.message(
      'Professional Information',
      name: 'editProfileProfessionalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Job Title`
  String get editProfileJobTitle {
    return Intl.message(
      'Job Title',
      name: 'editProfileJobTitle',
      desc: '',
      args: [],
    );
  }

  /// `Military Status`
  String get editProfileMilitaryStatus {
    return Intl.message(
      'Military Status',
      name: 'editProfileMilitaryStatus',
      desc: '',
      args: [],
    );
  }

  /// `Exempted`
  String get editProfileExempted {
    return Intl.message(
      'Exempted',
      name: 'editProfileExempted',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get editProfileCompleted {
    return Intl.message(
      'Completed',
      name: 'editProfileCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Postponed`
  String get editProfilePostponed {
    return Intl.message(
      'Postponed',
      name: 'editProfilePostponed',
      desc: '',
      args: [],
    );
  }

  /// `Not applicable`
  String get editProfileNotApplicable {
    return Intl.message(
      'Not applicable',
      name: 'editProfileNotApplicable',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get editProfileLocation {
    return Intl.message(
      'Location',
      name: 'editProfileLocation',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get editProfileCountry {
    return Intl.message(
      'Country',
      name: 'editProfileCountry',
      desc: '',
      args: [],
    );
  }

  /// `Egypt`
  String get editProfileEgypt {
    return Intl.message('Egypt', name: 'editProfileEgypt', desc: '', args: []);
  }

  /// `Saudi Arabia`
  String get editProfileSaudiArabia {
    return Intl.message(
      'Saudi Arabia',
      name: 'editProfileSaudiArabia',
      desc: '',
      args: [],
    );
  }

  /// `United Arab Emirates`
  String get editProfileUnitedArabEmirates {
    return Intl.message(
      'United Arab Emirates',
      name: 'editProfileUnitedArabEmirates',
      desc: '',
      args: [],
    );
  }

  /// `State / Governorate`
  String get editProfileGovernorate {
    return Intl.message(
      'State / Governorate',
      name: 'editProfileGovernorate',
      desc: '',
      args: [],
    );
  }

  /// `Alexandria`
  String get editProfileAlexandria {
    return Intl.message(
      'Alexandria',
      name: 'editProfileAlexandria',
      desc: '',
      args: [],
    );
  }

  /// `Giza`
  String get editProfileGiza {
    return Intl.message('Giza', name: 'editProfileGiza', desc: '', args: []);
  }

  /// `City`
  String get editProfileCity {
    return Intl.message('City', name: 'editProfileCity', desc: '', args: []);
  }

  /// `Nasr City`
  String get editProfileNasrCity {
    return Intl.message(
      'Nasr City',
      name: 'editProfileNasrCity',
      desc: '',
      args: [],
    );
  }

  /// `Maadi`
  String get editProfileMaadi {
    return Intl.message('Maadi', name: 'editProfileMaadi', desc: '', args: []);
  }

  /// `Heliopolis`
  String get editProfileHeliopolis {
    return Intl.message(
      'Heliopolis',
      name: 'editProfileHeliopolis',
      desc: '',
      args: [],
    );
  }

  /// `Professional Links`
  String get editProfileProfessionalLinks {
    return Intl.message(
      'Professional Links',
      name: 'editProfileProfessionalLinks',
      desc: '',
      args: [],
    );
  }

  /// `Optional`
  String get editProfileOptional {
    return Intl.message(
      'Optional',
      name: 'editProfileOptional',
      desc: '',
      args: [],
    );
  }

  /// `Change photo`
  String get editProfileChangePhoto {
    return Intl.message(
      'Change photo',
      name: 'editProfileChangePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get editProfileSaveChanges {
    return Intl.message(
      'Save Changes',
      name: 'editProfileSaveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get editProfileCancel {
    return Intl.message(
      'Cancel',
      name: 'editProfileCancel',
      desc: '',
      args: [],
    );
  }

  /// `Profile changes saved`
  String get editProfileSaved {
    return Intl.message(
      'Profile changes saved',
      name: 'editProfileSaved',
      desc: '',
      args: [],
    );
  }

  /// `Photo selection is not available yet`
  String get editProfilePhotoUnavailable {
    return Intl.message(
      'Photo selection is not available yet',
      name: 'editProfilePhotoUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Developer`
  String get mobileDeveloper {
    return Intl.message(
      'Mobile Developer',
      name: 'mobileDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Developer Intern`
  String get flutterDeveloperIntern {
    return Intl.message(
      'Flutter Developer Intern',
      name: 'flutterDeveloperIntern',
      desc: '',
      args: [],
    );
  }

  /// `Matches your Flutter skills`
  String get matchFlutterSkills {
    return Intl.message(
      'Matches your Flutter skills',
      name: 'matchFlutterSkills',
      desc: '',
      args: [],
    );
  }

  /// `Matches your engineering skills`
  String get matchEngineeringSkills {
    return Intl.message(
      'Matches your engineering skills',
      name: 'matchEngineeringSkills',
      desc: '',
      args: [],
    );
  }

  /// `Applied 2 days ago`
  String get applicationAppliedTwoDaysAgo {
    return Intl.message(
      'Applied 2 days ago',
      name: 'applicationAppliedTwoDaysAgo',
      desc: '',
      args: [],
    );
  }

  /// `Applied 5 days ago`
  String get applicationAppliedFiveDaysAgo {
    return Intl.message(
      'Applied 5 days ago',
      name: 'applicationAppliedFiveDaysAgo',
      desc: '',
      args: [],
    );
  }

  /// `Applied 1 week ago`
  String get applicationAppliedOneWeekAgo {
    return Intl.message(
      'Applied 1 week ago',
      name: 'applicationAppliedOneWeekAgo',
      desc: '',
      args: [],
    );
  }

  /// `Applied 2 weeks ago`
  String get applicationAppliedTwoWeeksAgo {
    return Intl.message(
      'Applied 2 weeks ago',
      name: 'applicationAppliedTwoWeeksAgo',
      desc: '',
      args: [],
    );
  }

  /// `Applied 3 weeks ago`
  String get applicationAppliedThreeWeeksAgo {
    return Intl.message(
      'Applied 3 weeks ago',
      name: 'applicationAppliedThreeWeeksAgo',
      desc: '',
      args: [],
    );
  }

  /// `Application submitted`
  String get applicationSubmitted {
    return Intl.message(
      'Application submitted',
      name: 'applicationSubmitted',
      desc: '',
      args: [],
    );
  }

  /// `Profile under evaluation`
  String get applicationUnderReview {
    return Intl.message(
      'Profile under evaluation',
      name: 'applicationUnderReview',
      desc: '',
      args: [],
    );
  }

  /// `Round 1 Technical`
  String get applicationTechnicalRoundOne {
    return Intl.message(
      'Round 1 Technical',
      name: 'applicationTechnicalRoundOne',
      desc: '',
      args: [],
    );
  }

  /// `Interview scheduled — check your email`
  String get applicationInterviewScheduled {
    return Intl.message(
      'Interview scheduled — check your email',
      name: 'applicationInterviewScheduled',
      desc: '',
      args: [],
    );
  }

  /// `Application closed`
  String get applicationClosed {
    return Intl.message(
      'Application closed',
      name: 'applicationClosed',
      desc: '',
      args: [],
    );
  }

  /// `Offer received`
  String get applicationOfferReceived {
    return Intl.message(
      'Offer received',
      name: 'applicationOfferReceived',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Developer`
  String get roadmapRoleFlutterDeveloper {
    return Intl.message(
      'Flutter Developer',
      name: 'roadmapRoleFlutterDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `5 hours`
  String get roadmapFiveHours {
    return Intl.message(
      '5 hours',
      name: 'roadmapFiveHours',
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
