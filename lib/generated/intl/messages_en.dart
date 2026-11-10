// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(title) => "Application for ${title} is coming soon.";

  static String m1(count) => "${count} applications";

  static String m2(name) => "Good morning, ${name}";

  static String m3(seconds) => "Resend available in 00:${seconds}";

  static String m4(time) => "Estimated: ${time}";

  static String m5(role) =>
      "Testing and CI/CD are currently your highest-impact skill gaps for ${role} roles.";

  static String m6(completed, total) =>
      "${completed} of ${total} milestones completed";

  static String m7(count) => "${count} saved opportunities";

  static String m8(title) => "${title} is coming soon.";

  static String m9(email) => "We sent a 6-digit code to ${email}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "accountCreationUnavailable": MessageLookupByLibrary.simpleMessage(
      "Account creation is not connected yet.",
    ),
    "accountRecovery": MessageLookupByLibrary.simpleMessage("ACCOUNT RECOVERY"),
    "agreeToTerms": MessageLookupByLibrary.simpleMessage(
      "I agree to the Terms & Privacy Policy",
    ),
    "alreadyHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Already have an account? ",
    ),
    "appIconSemantic": MessageLookupByLibrary.simpleMessage(
      "SkillMatch app icon",
    ),
    "appName": MessageLookupByLibrary.simpleMessage("SkillMatch"),
    "applicationAppliedFiveDaysAgo": MessageLookupByLibrary.simpleMessage(
      "Applied 5 days ago",
    ),
    "applicationAppliedOneWeekAgo": MessageLookupByLibrary.simpleMessage(
      "Applied 1 week ago",
    ),
    "applicationAppliedThreeWeeksAgo": MessageLookupByLibrary.simpleMessage(
      "Applied 3 weeks ago",
    ),
    "applicationAppliedTwoDaysAgo": MessageLookupByLibrary.simpleMessage(
      "Applied 2 days ago",
    ),
    "applicationAppliedTwoWeeksAgo": MessageLookupByLibrary.simpleMessage(
      "Applied 2 weeks ago",
    ),
    "applicationClosed": MessageLookupByLibrary.simpleMessage(
      "Application closed",
    ),
    "applicationComingSoon": m0,
    "applicationCount": m1,
    "applicationInterviewScheduled": MessageLookupByLibrary.simpleMessage(
      "Interview scheduled — check your email",
    ),
    "applicationOfferReceived": MessageLookupByLibrary.simpleMessage(
      "Offer received",
    ),
    "applicationSubmitted": MessageLookupByLibrary.simpleMessage(
      "Application submitted",
    ),
    "applicationTechnicalRoundOne": MessageLookupByLibrary.simpleMessage(
      "Round 1 Technical",
    ),
    "applicationUnderReview": MessageLookupByLibrary.simpleMessage(
      "Profile under evaluation",
    ),
    "appliedTab": MessageLookupByLibrary.simpleMessage("Applied"),
    "applyNow": MessageLookupByLibrary.simpleMessage("Apply Now"),
    "atLeastEightCharacters": MessageLookupByLibrary.simpleMessage(
      "At least 8 characters",
    ),
    "atLeastOneNumber": MessageLookupByLibrary.simpleMessage(
      "At least one number",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Back"),
    "backToLogin": MessageLookupByLibrary.simpleMessage("Back to login"),
    "cairo": MessageLookupByLibrary.simpleMessage("Cairo"),
    "changeEmail": MessageLookupByLibrary.simpleMessage("Change email"),
    "chatBotAssistantName": MessageLookupByLibrary.simpleMessage(
      "SkillMatch AI",
    ),
    "chatBotAssistantSubtitle": MessageLookupByLibrary.simpleMessage(
      "Your career copilot",
    ),
    "chatBotCareerReply": MessageLookupByLibrary.simpleMessage(
      "A good next step is to match your strongest skills with the role requirements, then focus on one or two gaps. Which role or skill would you like to explore first?",
    ),
    "chatBotCvReply": MessageLookupByLibrary.simpleMessage(
      "A strong CV starts with a clear summary, measurable achievements, and skills tailored to the role. Share the job title you are targeting and I can suggest sections to improve.",
    ),
    "chatBotDefaultReply": MessageLookupByLibrary.simpleMessage(
      "Thanks for sharing. I can help you explore career options, prepare for interviews, improve your CV, or plan the skills to learn next. What would you like to focus on?",
    ),
    "chatBotDisclaimer": MessageLookupByLibrary.simpleMessage(
      "AI can make mistakes. Double-check important information.",
    ),
    "chatBotInputHint": MessageLookupByLibrary.simpleMessage(
      "Ask anything about your career...",
    ),
    "chatBotInterviewReply": MessageLookupByLibrary.simpleMessage(
      "Let’s prepare together. Start by reviewing the role requirements, then practice explaining one project: the challenge, your approach, and the result.",
    ),
    "chatBotNewConversation": MessageLookupByLibrary.simpleMessage(
      "New conversation",
    ),
    "chatBotPromptCareer": MessageLookupByLibrary.simpleMessage(
      "Plan my career path",
    ),
    "chatBotPromptCv": MessageLookupByLibrary.simpleMessage("Improve my CV"),
    "chatBotPromptInterview": MessageLookupByLibrary.simpleMessage(
      "Practice an interview",
    ),
    "chatBotPromptJobs": MessageLookupByLibrary.simpleMessage(
      "Find matching jobs",
    ),
    "chatBotSendMessage": MessageLookupByLibrary.simpleMessage("Send message"),
    "chatBotTryAsking": MessageLookupByLibrary.simpleMessage("TRY ASKING"),
    "chatBotWelcomeDescription": MessageLookupByLibrary.simpleMessage(
      "Ask me about your career, skills, or job search. Let’s make your next move count.",
    ),
    "chatBotWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Your next opportunity\nstarts here.",
    ),
    "checkSpam": MessageLookupByLibrary.simpleMessage(
      "If you don’t see the email, check Spam.",
    ),
    "chooseStrongPassword": MessageLookupByLibrary.simpleMessage(
      "Choose a strong password you haven’t used before.",
    ),
    "chooseTargetRole": MessageLookupByLibrary.simpleMessage(
      "Choose your target role",
    ),
    "completeSignUp": MessageLookupByLibrary.simpleMessage("Complete sign up"),
    "confirmNewPassword": MessageLookupByLibrary.simpleMessage(
      "Confirm new password",
    ),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("Confirm password"),
    "confirmPasswordRequired": MessageLookupByLibrary.simpleMessage(
      "Please confirm your password.",
    ),
    "continueAction": MessageLookupByLibrary.simpleMessage("Continue"),
    "continueWithGoogle": MessageLookupByLibrary.simpleMessage(
      "Continue with Google",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Create account"),
    "createNewPassword": MessageLookupByLibrary.simpleMessage(
      "Create a new password",
    ),
    "didNotReceiveCheckSpam": MessageLookupByLibrary.simpleMessage(
      "Didn’t receive it? Check Spam.",
    ),
    "editProfileAge": MessageLookupByLibrary.simpleMessage("Age"),
    "editProfileAlexandria": MessageLookupByLibrary.simpleMessage("Alexandria"),
    "editProfileCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "editProfileChangePhoto": MessageLookupByLibrary.simpleMessage(
      "Change photo",
    ),
    "editProfileCity": MessageLookupByLibrary.simpleMessage("City"),
    "editProfileCompleted": MessageLookupByLibrary.simpleMessage("Completed"),
    "editProfileCountry": MessageLookupByLibrary.simpleMessage("Country"),
    "editProfileEgypt": MessageLookupByLibrary.simpleMessage("Egypt"),
    "editProfileExempted": MessageLookupByLibrary.simpleMessage("Exempted"),
    "editProfileFemale": MessageLookupByLibrary.simpleMessage("Female"),
    "editProfileFullName": MessageLookupByLibrary.simpleMessage("Full Name"),
    "editProfileGender": MessageLookupByLibrary.simpleMessage("Gender"),
    "editProfileGiza": MessageLookupByLibrary.simpleMessage("Giza"),
    "editProfileGovernorate": MessageLookupByLibrary.simpleMessage(
      "State / Governorate",
    ),
    "editProfileHeliopolis": MessageLookupByLibrary.simpleMessage("Heliopolis"),
    "editProfileInvalidAge": MessageLookupByLibrary.simpleMessage(
      "Enter a valid age",
    ),
    "editProfileJobTitle": MessageLookupByLibrary.simpleMessage("Job Title"),
    "editProfileLocation": MessageLookupByLibrary.simpleMessage("Location"),
    "editProfileMaadi": MessageLookupByLibrary.simpleMessage("Maadi"),
    "editProfileMale": MessageLookupByLibrary.simpleMessage("Male"),
    "editProfileMilitaryStatus": MessageLookupByLibrary.simpleMessage(
      "Military Status",
    ),
    "editProfileNasrCity": MessageLookupByLibrary.simpleMessage("Nasr City"),
    "editProfileNotApplicable": MessageLookupByLibrary.simpleMessage(
      "Not applicable",
    ),
    "editProfileOptional": MessageLookupByLibrary.simpleMessage("Optional"),
    "editProfilePersonalInformation": MessageLookupByLibrary.simpleMessage(
      "Personal Information",
    ),
    "editProfilePhoneNumber": MessageLookupByLibrary.simpleMessage(
      "Phone Number",
    ),
    "editProfilePhotoUnavailable": MessageLookupByLibrary.simpleMessage(
      "Photo selection is not available yet",
    ),
    "editProfilePostponed": MessageLookupByLibrary.simpleMessage("Postponed"),
    "editProfilePreferNotToSay": MessageLookupByLibrary.simpleMessage(
      "Prefer not to say",
    ),
    "editProfileProfessionalInformation": MessageLookupByLibrary.simpleMessage(
      "Professional Information",
    ),
    "editProfileProfessionalLinks": MessageLookupByLibrary.simpleMessage(
      "Professional Links",
    ),
    "editProfileSaudiArabia": MessageLookupByLibrary.simpleMessage(
      "Saudi Arabia",
    ),
    "editProfileSaveChanges": MessageLookupByLibrary.simpleMessage(
      "Save Changes",
    ),
    "editProfileSaved": MessageLookupByLibrary.simpleMessage(
      "Profile changes saved",
    ),
    "editProfileTitle": MessageLookupByLibrary.simpleMessage("Edit Profile"),
    "editProfileUnitedArabEmirates": MessageLookupByLibrary.simpleMessage(
      "United Arab Emirates",
    ),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "emailAddress": MessageLookupByLibrary.simpleMessage("Email address"),
    "emailExample": MessageLookupByLibrary.simpleMessage("name@example.com"),
    "emailRequired": MessageLookupByLibrary.simpleMessage("Email is required."),
    "enterVerificationCode": MessageLookupByLibrary.simpleMessage(
      "Enter verification code",
    ),
    "experienceEntryLevel": MessageLookupByLibrary.simpleMessage("Entry Level"),
    "experienceInternship": MessageLookupByLibrary.simpleMessage("Internship"),
    "experienceOneToThreeYears": MessageLookupByLibrary.simpleMessage(
      "1–3 years",
    ),
    "experienceTwoYears": MessageLookupByLibrary.simpleMessage("0–2 years"),
    "fieldRequired": MessageLookupByLibrary.simpleMessage(
      "This field is required.",
    ),
    "filterAllJobs": MessageLookupByLibrary.simpleMessage("All jobs"),
    "filterFullTime": MessageLookupByLibrary.simpleMessage("Full-time"),
    "filterInternship": MessageLookupByLibrary.simpleMessage("Internship"),
    "filterJobs": MessageLookupByLibrary.simpleMessage("Filter jobs"),
    "filterRemote": MessageLookupByLibrary.simpleMessage("Remote"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("Filter jobs"),
    "flutterDeveloperIntern": MessageLookupByLibrary.simpleMessage(
      "Flutter Developer Intern",
    ),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("Forgot password?"),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage(
      "Forgot your password?",
    ),
    "frontendDeveloper": MessageLookupByLibrary.simpleMessage(
      "Frontend Developer",
    ),
    "fullTime": MessageLookupByLibrary.simpleMessage("Full-time"),
    "giza": MessageLookupByLibrary.simpleMessage("Giza"),
    "goodMatch": MessageLookupByLibrary.simpleMessage("Good Match"),
    "google": MessageLookupByLibrary.simpleMessage("Google"),
    "googleSignInUnavailable": MessageLookupByLibrary.simpleMessage(
      "Google sign-in is not connected yet.",
    ),
    "googleSignUpUnavailable": MessageLookupByLibrary.simpleMessage(
      "Google sign-up is not connected yet.",
    ),
    "homeGreeting": m2,
    "homePrompt": MessageLookupByLibrary.simpleMessage(
      "Ready to find your next opportunity?",
    ),
    "hybrid": MessageLookupByLibrary.simpleMessage("Hybrid"),
    "introDescription": MessageLookupByLibrary.simpleMessage(
      "See why a job fits you, what you’re missing, and what to do next.",
    ),
    "introImageSemantic": MessageLookupByLibrary.simpleMessage(
      "A CV and phone connected by a job match",
    ),
    "introTitle": MessageLookupByLibrary.simpleMessage(
      "Turn your CV into opportunities",
    ),
    "juniorFlutterDeveloper": MessageLookupByLibrary.simpleMessage(
      "Junior Flutter Developer",
    ),
    "juniorSoftwareEngineer": MessageLookupByLibrary.simpleMessage(
      "Junior Software Engineer",
    ),
    "keepMeSignedIn": MessageLookupByLibrary.simpleMessage("Keep me signed in"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "Access your verified career pathways and opportunities.",
    ),
    "loginTitle": MessageLookupByLibrary.simpleMessage("Log in"),
    "matchDescription": MessageLookupByLibrary.simpleMessage(
      "Not just a score — strengths, gaps, and clear next actions.",
    ),
    "matchDesignFundamentals": MessageLookupByLibrary.simpleMessage(
      "Build on your design fundamentals",
    ),
    "matchEngineeringSkills": MessageLookupByLibrary.simpleMessage(
      "Matches your engineering skills",
    ),
    "matchFlutterRest": MessageLookupByLibrary.simpleMessage(
      "Matches your Flutter & REST API skills",
    ),
    "matchFlutterSkills": MessageLookupByLibrary.simpleMessage(
      "Matches your Flutter skills",
    ),
    "matchImageSemantic": MessageLookupByLibrary.simpleMessage(
      "Illustration of an explainable job match",
    ),
    "matchProblemSolving": MessageLookupByLibrary.simpleMessage(
      "Matches problem solving skills",
    ),
    "matchTargetRole": MessageLookupByLibrary.simpleMessage(
      "Recommended based on your target role",
    ),
    "matchTitle": MessageLookupByLibrary.simpleMessage(
      "Get an explainable match",
    ),
    "matchWebDevelopment": MessageLookupByLibrary.simpleMessage(
      "Matches your web development skills",
    ),
    "matchesBannerDescription": MessageLookupByLibrary.simpleMessage(
      "Explore opportunities based on your skills and career preferences.",
    ),
    "matchesBannerTitle": MessageLookupByLibrary.simpleMessage(
      "We found jobs that match your profile",
    ),
    "matchesCount": MessageLookupByLibrary.simpleMessage("12 matches"),
    "matchesReady": MessageLookupByLibrary.simpleMessage(
      "Your 12 job matches are ready.",
    ),
    "mobileDeveloper": MessageLookupByLibrary.simpleMessage("Mobile Developer"),
    "mobileDeveloperIntern": MessageLookupByLibrary.simpleMessage(
      "Mobile Developer Intern",
    ),
    "navChatBot": MessageLookupByLibrary.simpleMessage("Chat Bot"),
    "navHome": MessageLookupByLibrary.simpleMessage("Home"),
    "navProfile": MessageLookupByLibrary.simpleMessage("Profile"),
    "navRoadmap": MessageLookupByLibrary.simpleMessage("Roadmap"),
    "navSaved": MessageLookupByLibrary.simpleMessage("Saved"),
    "newHere": MessageLookupByLibrary.simpleMessage("New here? "),
    "newPassword": MessageLookupByLibrary.simpleMessage("New password"),
    "newPasswordTitle": MessageLookupByLibrary.simpleMessage("New password"),
    "nextUploadCv": MessageLookupByLibrary.simpleMessage(
      "Next, you can upload your CV (optional).",
    ),
    "noJobsMatch": MessageLookupByLibrary.simpleMessage(
      "No jobs match your search",
    ),
    "noSavedJobs": MessageLookupByLibrary.simpleMessage("No saved jobs yet"),
    "notNow": MessageLookupByLibrary.simpleMessage("Not now"),
    "notificationApplicationMessage": MessageLookupByLibrary.simpleMessage(
      "Your TechNova application is now In Review.",
    ),
    "notificationApplicationTitle": MessageLookupByLibrary.simpleMessage(
      "Application status updated",
    ),
    "notificationCategoryAll": MessageLookupByLibrary.simpleMessage("All"),
    "notificationCategoryApplications": MessageLookupByLibrary.simpleMessage(
      "Applications",
    ),
    "notificationCategoryCv": MessageLookupByLibrary.simpleMessage("CV"),
    "notificationCategoryJobs": MessageLookupByLibrary.simpleMessage("Jobs"),
    "notificationCategoryRoadmap": MessageLookupByLibrary.simpleMessage(
      "Roadmap",
    ),
    "notificationCvMessage": MessageLookupByLibrary.simpleMessage(
      "We extracted 12 skills and updated your career profile.",
    ),
    "notificationCvTitle": MessageLookupByLibrary.simpleMessage(
      "CV analysis completed",
    ),
    "notificationFourHoursAgo": MessageLookupByLibrary.simpleMessage(
      "4 hrs ago",
    ),
    "notificationNewJobsMessage": MessageLookupByLibrary.simpleMessage(
      "We found 8 Flutter opportunities based on your skills.",
    ),
    "notificationNewJobsTitle": MessageLookupByLibrary.simpleMessage(
      "New jobs match your profile",
    ),
    "notificationReviewCv": MessageLookupByLibrary.simpleMessage("Review CV"),
    "notificationRoadmapMessage": MessageLookupByLibrary.simpleMessage(
      "Testing is now one of your highest-priority skills.",
    ),
    "notificationRoadmapTitle": MessageLookupByLibrary.simpleMessage(
      "Your roadmap has been updated",
    ),
    "notificationTenMinutesAgo": MessageLookupByLibrary.simpleMessage(
      "10 min ago",
    ),
    "notificationToday": MessageLookupByLibrary.simpleMessage("TODAY"),
    "notificationTwoHoursAgo": MessageLookupByLibrary.simpleMessage(
      "2 hrs ago",
    ),
    "notificationViewApplication": MessageLookupByLibrary.simpleMessage(
      "View Application",
    ),
    "notificationViewJobs": MessageLookupByLibrary.simpleMessage("View Jobs"),
    "notificationViewRoadmap": MessageLookupByLibrary.simpleMessage(
      "View Roadmap",
    ),
    "notificationYesterday": MessageLookupByLibrary.simpleMessage("YESTERDAY"),
    "notificationYesterdayAt": MessageLookupByLibrary.simpleMessage(
      "Yesterday • 3:45 PM",
    ),
    "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
    "notificationsEmptyCategory": MessageLookupByLibrary.simpleMessage(
      "No notifications in this category.",
    ),
    "notificationsMarkAllRead": MessageLookupByLibrary.simpleMessage(
      "Mark all read",
    ),
    "onboardingCompanyLocation": MessageLookupByLibrary.simpleMessage(
      "TechNova • Cairo • Hybrid",
    ),
    "onboardingSampleJob": MessageLookupByLibrary.simpleMessage(
      "Flutter Developer Intern",
    ),
    "or": MessageLookupByLibrary.simpleMessage("or"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "passwordIncludeNumber": MessageLookupByLibrary.simpleMessage(
      "Include at least one number.",
    ),
    "passwordMinimumLength": MessageLookupByLibrary.simpleMessage(
      "Use at least 8 characters.",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Password is required.",
    ),
    "passwordRequirements": MessageLookupByLibrary.simpleMessage(
      "Password requirements",
    ),
    "passwordUpdated": MessageLookupByLibrary.simpleMessage("Password updated"),
    "passwordUpdatedDescription": MessageLookupByLibrary.simpleMessage(
      "Your password has been changed successfully. You can now log in with your new password.",
    ),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "Passwords do not match.",
    ),
    "passwordsMustMatch": MessageLookupByLibrary.simpleMessage(
      "Passwords must match",
    ),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone number"),
    "postedFourDaysAgo": MessageLookupByLibrary.simpleMessage(
      "Posted 4 days ago",
    ),
    "postedThreeDaysAgo": MessageLookupByLibrary.simpleMessage(
      "Posted 3 days ago",
    ),
    "postedToday": MessageLookupByLibrary.simpleMessage("Posted today"),
    "postedTwoDaysAgo": MessageLookupByLibrary.simpleMessage(
      "Posted 2 days ago",
    ),
    "postedYesterday": MessageLookupByLibrary.simpleMessage("Posted yesterday"),
    "potentialMatch": MessageLookupByLibrary.simpleMessage("Potential Match"),
    "productDesignIntern": MessageLookupByLibrary.simpleMessage(
      "Product Design Intern",
    ),
    "profileAddSkill": MessageLookupByLibrary.simpleMessage("+ Add skill"),
    "profileBachelorComputerScience": MessageLookupByLibrary.simpleMessage(
      "Bachelor of Computer Science",
    ),
    "profileCairoUniversity": MessageLookupByLibrary.simpleMessage(
      "Cairo University",
    ),
    "profileCandidateTitle": MessageLookupByLibrary.simpleMessage(
      "Candidate Profile",
    ),
    "profileCareerPreferences": MessageLookupByLibrary.simpleMessage(
      "Career Preferences",
    ),
    "profileCvAnalyzedUpdated": MessageLookupByLibrary.simpleMessage(
      "Analyzed • Updated 5 days ago",
    ),
    "profileCvGood": MessageLookupByLibrary.simpleMessage("Good"),
    "profileCvLabel": MessageLookupByLibrary.simpleMessage("CV"),
    "profileEdit": MessageLookupByLibrary.simpleMessage("Edit Profile"),
    "profileEducation": MessageLookupByLibrary.simpleMessage("Education"),
    "profileEntryLevel": MessageLookupByLibrary.simpleMessage("Entry Level"),
    "profileExcellent": MessageLookupByLibrary.simpleMessage("Excellent"),
    "profileExperience": MessageLookupByLibrary.simpleMessage("Experience"),
    "profileExperienceDates": MessageLookupByLibrary.simpleMessage(
      "Jun 2025 – Sep 2025",
    ),
    "profileExperienceDescription": MessageLookupByLibrary.simpleMessage(
      "Built mobile features and integrated REST APIs.",
    ),
    "profileExperienceSection": MessageLookupByLibrary.simpleMessage(
      "Experience",
    ),
    "profileFlutterIntern": MessageLookupByLibrary.simpleMessage(
      "Flutter Developer Intern",
    ),
    "profileFromCv": MessageLookupByLibrary.simpleMessage("From CV"),
    "profileFullTimeInternship": MessageLookupByLibrary.simpleMessage(
      "Full-time / Internship",
    ),
    "profileGithub": MessageLookupByLibrary.simpleMessage("GitHub"),
    "profileGpa": MessageLookupByLibrary.simpleMessage(
      "2021 – 2025 • GPA: 3.4 / 4.0",
    ),
    "profileJobFinderApp": MessageLookupByLibrary.simpleMessage(
      "Job Finder App",
    ),
    "profileJobFinderDescription": MessageLookupByLibrary.simpleMessage(
      "Flutter application for discovering and saving job opportunities.",
    ),
    "profileJobType": MessageLookupByLibrary.simpleMessage("Job type"),
    "profileLinkedin": MessageLookupByLibrary.simpleMessage("LinkedIn"),
    "profileLocation": MessageLookupByLibrary.simpleMessage("Cairo, Egypt"),
    "profileLookingFor": MessageLookupByLibrary.simpleMessage(
      "Looking for Flutter and Mobile Development opportunities.",
    ),
    "profileName": MessageLookupByLibrary.simpleMessage("Ahmed Mohamed"),
    "profileNeedsImprovement": MessageLookupByLibrary.simpleMessage(
      "Needs Improvement",
    ),
    "profilePreferredLocation": MessageLookupByLibrary.simpleMessage(
      "Preferred location",
    ),
    "profileProjectSuggestion": MessageLookupByLibrary.simpleMessage(
      "Add measurable outcomes or project links to strengthen this section.",
    ),
    "profileProjects": MessageLookupByLibrary.simpleMessage("Projects"),
    "profileReplaceCv": MessageLookupByLibrary.simpleMessage("Replace CV"),
    "profileRoadmapLabel": MessageLookupByLibrary.simpleMessage("Roadmap"),
    "profileRole": MessageLookupByLibrary.simpleMessage(
      "Junior Flutter Developer",
    ),
    "profileSettingsTooltip": MessageLookupByLibrary.simpleMessage(
      "Profile settings",
    ),
    "profileSkills": MessageLookupByLibrary.simpleMessage("Skills"),
    "profileTargetLabel": MessageLookupByLibrary.simpleMessage("Target"),
    "profileTargetRole": MessageLookupByLibrary.simpleMessage("Target role"),
    "profileTechSolutions": MessageLookupByLibrary.simpleMessage(
      "Tech Solutions",
    ),
    "profileTitle": MessageLookupByLibrary.simpleMessage(
      "Let’s set up your career profile",
    ),
    "profileViewCv": MessageLookupByLibrary.simpleMessage("View CV"),
    "profileViewProject": MessageLookupByLibrary.simpleMessage(
      "View project →",
    ),
    "recommendedForYou": MessageLookupByLibrary.simpleMessage(
      "Recommended for you",
    ),
    "registerTitle": MessageLookupByLibrary.simpleMessage("Create account"),
    "remote": MessageLookupByLibrary.simpleMessage("Remote"),
    "removeSavedJob": MessageLookupByLibrary.simpleMessage("Remove saved job"),
    "requestNewCode": MessageLookupByLibrary.simpleMessage(
      "You can request a new code",
    ),
    "resendAvailableIn": m3,
    "resendCode": MessageLookupByLibrary.simpleMessage("Resend code"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Enter your email and we’ll send you a verification code.",
    ),
    "resetPasswordTitle": MessageLookupByLibrary.simpleMessage(
      "Reset password",
    ),
    "roadmapAiAdvisory": MessageLookupByLibrary.simpleMessage("AI ADVISORY"),
    "roadmapAskChatBot": MessageLookupByLibrary.simpleMessage("Ask Chat Bot"),
    "roadmapChange": MessageLookupByLibrary.simpleMessage("Change"),
    "roadmapChooseTargetRole": MessageLookupByLibrary.simpleMessage(
      "Choose your target role",
    ),
    "roadmapCiCd": MessageLookupByLibrary.simpleMessage("CI/CD"),
    "roadmapCiCdDescription": MessageLookupByLibrary.simpleMessage(
      "Automate builds, testing, and deployment. Frequently requested in target jobs.",
    ),
    "roadmapCleanArchitecture": MessageLookupByLibrary.simpleMessage(
      "Clean Architecture",
    ),
    "roadmapCleanArchitectureDescription": MessageLookupByLibrary.simpleMessage(
      "Structure scalable Flutter projects using clear architectural layers.",
    ),
    "roadmapDartFoundations": MessageLookupByLibrary.simpleMessage(
      "Dart Foundations",
    ),
    "roadmapDartFoundationsDescription": MessageLookupByLibrary.simpleMessage(
      "Core language concepts, async programming, and null safety.",
    ),
    "roadmapEstimatedTime": m4,
    "roadmapFiveHours": MessageLookupByLibrary.simpleMessage("5 hours"),
    "roadmapFlutterFundamentals": MessageLookupByLibrary.simpleMessage(
      "Flutter Fundamentals",
    ),
    "roadmapFlutterFundamentalsDescription":
        MessageLookupByLibrary.simpleMessage(
          "Widgets, layouts, navigation, forms, and API integration.",
        ),
    "roadmapFocusThisWeek": MessageLookupByLibrary.simpleMessage(
      "Focus for this week",
    ),
    "roadmapHighPriorityGap": MessageLookupByLibrary.simpleMessage(
      "High priority gap",
    ),
    "roadmapInsightDescription": m5,
    "roadmapInsightTitle": MessageLookupByLibrary.simpleMessage(
      "Roadmap Insight",
    ),
    "roadmapLearningPath": MessageLookupByLibrary.simpleMessage(
      "Your learning path",
    ),
    "roadmapLearningPathDescription": MessageLookupByLibrary.simpleMessage(
      "Follow these steps to become a stronger candidate.",
    ),
    "roadmapPriority": MessageLookupByLibrary.simpleMessage("PRIORITY"),
    "roadmapProgressSummary": m6,
    "roadmapReadyToApply": MessageLookupByLibrary.simpleMessage(
      "Ready to Apply",
    ),
    "roadmapReadyToApplyDescription": MessageLookupByLibrary.simpleMessage(
      "Complete the priority milestones to strengthen your profile.",
    ),
    "roadmapResetTasks": MessageLookupByLibrary.simpleMessage(
      "Reset weekly tasks",
    ),
    "roadmapRoleDescription": MessageLookupByLibrary.simpleMessage(
      "Your roadmap is based on your current skills and job requirements.",
    ),
    "roadmapRoleFlutterDeveloper": MessageLookupByLibrary.simpleMessage(
      "Flutter Developer",
    ),
    "roadmapRoleFrontendDeveloper": MessageLookupByLibrary.simpleMessage(
      "Frontend Developer",
    ),
    "roadmapRoleMobileDeveloper": MessageLookupByLibrary.simpleMessage(
      "Mobile Developer",
    ),
    "roadmapRoleSoftwareEngineer": MessageLookupByLibrary.simpleMessage(
      "Software Engineer",
    ),
    "roadmapStateManagement": MessageLookupByLibrary.simpleMessage(
      "State Management",
    ),
    "roadmapStatusCompleted": MessageLookupByLibrary.simpleMessage("Completed"),
    "roadmapStatusInProgress": MessageLookupByLibrary.simpleMessage(
      "In Progress",
    ),
    "roadmapStatusNext": MessageLookupByLibrary.simpleMessage("Next"),
    "roadmapStatusUpcoming": MessageLookupByLibrary.simpleMessage("Upcoming"),
    "roadmapTagAsync": MessageLookupByLibrary.simpleMessage("Async"),
    "roadmapTagOop": MessageLookupByLibrary.simpleMessage("OOP"),
    "roadmapTagRestApis": MessageLookupByLibrary.simpleMessage("REST APIs"),
    "roadmapTargetRole": MessageLookupByLibrary.simpleMessage("TARGET ROLE"),
    "roadmapTaskImplementBloc": MessageLookupByLibrary.simpleMessage(
      "Implement Bloc in a small feature",
    ),
    "roadmapTaskLearnBloc": MessageLookupByLibrary.simpleMessage(
      "Learn Bloc fundamentals",
    ),
    "roadmapTaskRefactorProject": MessageLookupByLibrary.simpleMessage(
      "Refactor one existing project",
    ),
    "roadmapTasksTitle": MessageLookupByLibrary.simpleMessage(
      "State Management tasks",
    ),
    "roadmapTesting": MessageLookupByLibrary.simpleMessage("Testing"),
    "roadmapTestingDescription": MessageLookupByLibrary.simpleMessage(
      "Unit testing, widget testing, and testable architecture.",
    ),
    "roadmapViewTasks": MessageLookupByLibrary.simpleMessage("View Tasks"),
    "roadmapWhyThisMatters": MessageLookupByLibrary.simpleMessage(
      "Why this matters: ",
    ),
    "roadmapWhyThisMattersDescription": MessageLookupByLibrary.simpleMessage(
      "State management appears frequently in Flutter roles that match your profile.",
    ),
    "roadmapYourProgress": MessageLookupByLibrary.simpleMessage(
      "Your progress",
    ),
    "saveJob": MessageLookupByLibrary.simpleMessage("Save job"),
    "saveJobHint": MessageLookupByLibrary.simpleMessage(
      "Tap the bookmark on a job to save it here.",
    ),
    "savedApplicationDetailsSoon": MessageLookupByLibrary.simpleMessage(
      "Application details are coming soon.",
    ),
    "savedApplicationsEmptyDescription": MessageLookupByLibrary.simpleMessage(
      "Jobs you apply to will appear here.",
    ),
    "savedApplicationsEmptyTitle": MessageLookupByLibrary.simpleMessage(
      "No applications yet",
    ),
    "savedApplyNow": MessageLookupByLibrary.simpleMessage("Apply Now"),
    "savedCloseSearch": MessageLookupByLibrary.simpleMessage("Close search"),
    "savedJobCount": m7,
    "savedJobs": MessageLookupByLibrary.simpleMessage("Saved jobs"),
    "savedJobsTitle": MessageLookupByLibrary.simpleMessage("Saved Jobs"),
    "savedRemoveFromSaved": MessageLookupByLibrary.simpleMessage(
      "Remove from saved jobs",
    ),
    "savedSearchJobs": MessageLookupByLibrary.simpleMessage("Search jobs"),
    "savedSortBestMatch": MessageLookupByLibrary.simpleMessage("Best match"),
    "savedSortRecommended": MessageLookupByLibrary.simpleMessage("Recommended"),
    "savedSortTitle": MessageLookupByLibrary.simpleMessage("Title A–Z"),
    "savedStatusAll": MessageLookupByLibrary.simpleMessage("All statuses"),
    "savedStatusApplied": MessageLookupByLibrary.simpleMessage("Applied"),
    "savedStatusInReview": MessageLookupByLibrary.simpleMessage("In Review"),
    "savedStatusInterview": MessageLookupByLibrary.simpleMessage("Interview"),
    "savedStatusOffer": MessageLookupByLibrary.simpleMessage("Offer"),
    "savedStatusRejected": MessageLookupByLibrary.simpleMessage("Rejected"),
    "savedTab": MessageLookupByLibrary.simpleMessage("Saved"),
    "savedToYourList": MessageLookupByLibrary.simpleMessage(
      "Saved to your list",
    ),
    "savedViewApplication": MessageLookupByLibrary.simpleMessage(
      "View application",
    ),
    "searchHint": MessageLookupByLibrary.simpleMessage(
      "Search jobs, companies, or skills",
    ),
    "secureVerification": MessageLookupByLibrary.simpleMessage(
      "SkillMatch Secure Verification",
    ),
    "securityBanner": MessageLookupByLibrary.simpleMessage(
      "SkillMatch securely protects your verified credentials and application histories.",
    ),
    "seeAll": MessageLookupByLibrary.simpleMessage("See all"),
    "sendCode": MessageLookupByLibrary.simpleMessage("Send code"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "settingsAccount": MessageLookupByLibrary.simpleMessage("Account"),
    "settingsBack": MessageLookupByLibrary.simpleMessage("Back"),
    "settingsCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "settingsChangePassword": MessageLookupByLibrary.simpleMessage(
      "Change Password",
    ),
    "settingsChooseLanguage": MessageLookupByLibrary.simpleMessage(
      "Choose language",
    ),
    "settingsContactUs": MessageLookupByLibrary.simpleMessage("Contact Us"),
    "settingsCopyright": MessageLookupByLibrary.simpleMessage(
      "© 2025 SkillMatch. All rights reserved.",
    ),
    "settingsFollowUs": MessageLookupByLibrary.simpleMessage("Follow Us"),
    "settingsLanguage": MessageLookupByLibrary.simpleMessage("Language"),
    "settingsLanguageArabic": MessageLookupByLibrary.simpleMessage("العربية"),
    "settingsLanguageEnglish": MessageLookupByLibrary.simpleMessage("English"),
    "settingsLogout": MessageLookupByLibrary.simpleMessage("Log Out"),
    "settingsLogoutConfirm": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to log out?",
    ),
    "settingsManagePreferences": MessageLookupByLibrary.simpleMessage(
      "Manage your account preferences.",
    ),
    "settingsOptions": MessageLookupByLibrary.simpleMessage("Settings options"),
    "settingsPreferences": MessageLookupByLibrary.simpleMessage("Preferences"),
    "settingsPrivacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Privacy Policy",
    ),
    "settingsPrivacySupport": MessageLookupByLibrary.simpleMessage(
      "Privacy & Support",
    ),
    "settingsTheme": MessageLookupByLibrary.simpleMessage("Theme"),
    "showLess": MessageLookupByLibrary.simpleMessage("Show less"),
    "signUpWithGoogle": MessageLookupByLibrary.simpleMessage(
      "Sign up with Google",
    ),
    "skillMatchPortal": MessageLookupByLibrary.simpleMessage(
      "SKILLMATCH PORTAL",
    ),
    "skillMatchTagline": MessageLookupByLibrary.simpleMessage(
      "Smart Career Discovery",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("Skip"),
    "splashTagline": MessageLookupByLibrary.simpleMessage(
      "Professional Compatibility and Skills Platform",
    ),
    "startAction": MessageLookupByLibrary.simpleMessage("Start"),
    "strongMatch": MessageLookupByLibrary.simpleMessage("Strong match"),
    "tabComingSoon": m8,
    "trustedDevicesOnly": MessageLookupByLibrary.simpleMessage(
      "Only on trusted devices",
    ),
    "updatePassword": MessageLookupByLibrary.simpleMessage("Update password"),
    "uploadCvOptional": MessageLookupByLibrary.simpleMessage(
      "Upload your CV (optional)",
    ),
    "useAtLeastEightCharacters": MessageLookupByLibrary.simpleMessage(
      "Use at least 8 characters.",
    ),
    "useEightCharacters": MessageLookupByLibrary.simpleMessage(
      "Use 8+ characters",
    ),
    "validEmailRequired": MessageLookupByLibrary.simpleMessage(
      "Enter a valid email address.",
    ),
    "verificationCodeLabel": MessageLookupByLibrary.simpleMessage(
      "VERIFICATION CODE",
    ),
    "verificationSentGeneric": MessageLookupByLibrary.simpleMessage(
      "We sent a 6-digit code to your email.",
    ),
    "verificationSentToEmail": m9,
    "verify": MessageLookupByLibrary.simpleMessage("Verify"),
    "verifyCodeTitle": MessageLookupByLibrary.simpleMessage("Verify code"),
    "viewMatches": MessageLookupByLibrary.simpleMessage("View Matches"),
    "weeklyRoadmapActions": MessageLookupByLibrary.simpleMessage(
      "Get your roadmap and weekly actions",
    ),
    "welcomeBack": MessageLookupByLibrary.simpleMessage("Welcome back"),
  };
}
