import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:skillmatch/core/design_system/app_bar/app_app_bar.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/core/design_system/spacing/app_radius.dart';
import 'package:skillmatch/core/design_system/typography/app_text_styles.dart';
import 'package:skillmatch/core/design_system/widgets/buttons/app_button.dart';
import 'package:skillmatch/core/design_system/widgets/feedback/app_snack_bar.dart';
import 'package:skillmatch/core/design_system/widgets/inputs/app_dropdown.dart';
import 'package:skillmatch/core/design_system/widgets/inputs/app_text_field.dart';
import 'package:skillmatch/core/design_system/widgets/text/app_text.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
import 'package:skillmatch/features/profile/presentation/widgets/edit_profile/edit_profile_gender_selector.dart';
import 'package:skillmatch/features/profile/presentation/widgets/edit_profile/edit_profile_optional_link_field.dart';
import 'package:skillmatch/features/profile/presentation/widgets/edit_profile/edit_profile_phone_field.dart';
import 'package:skillmatch/features/profile/presentation/widgets/edit_profile/edit_profile_photo_picker.dart';
import 'package:skillmatch/features/profile/presentation/widgets/edit_profile/edit_profile_section_card.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _ageController;
  late final TextEditingController _phoneController;
  late final TextEditingController _jobTitleController;
  late final TextEditingController _githubController;
  late final TextEditingController _linkedinController;

  String _gender = 'male';
  String _militaryStatus = 'exempted';
  String _country = 'egypt';
  String _governorate = 'cairo';
  String _city = 'nasrCity';
  String _countryCode = '+20';

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: 'Ahmed Mohamed');
    _ageController = TextEditingController(text: '23');
    _phoneController = TextEditingController(text: '010 1234 5678');
    _jobTitleController = TextEditingController(
      text: 'Junior Flutter Developer',
    );
    _githubController = TextEditingController(text: 'github.com/ahmedmohamed');
    _linkedinController = TextEditingController(
      text: 'linkedin.com/in/ahmed-mohamed',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _phoneController.dispose();
    _jobTitleController.dispose();
    _githubController.dispose();
    _linkedinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: AppText(
          context.l10n.editProfileTitle,
          style: AppTextStyles.cardTitleLarge,
          color: AppColors.primary,
          fontWeight: FontWeight.w700,
        ),
        leading: IconButton(
          tooltip: context.l10n.back,
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.w),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: AppColors.secondaryContainer,
              borderRadius: BorderRadius.circular(AppRadius.radius8),
              border: Border.all(color: AppColors.secondaryFixed),
            ),
            child: AppText(
              'SkillMatch',
              style: AppTextStyles.labelSmall,
              color: AppColors.secondary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final horizontalPadding = constraints.maxWidth > 600 ? 32.w : 16.w;

            return Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      horizontalPadding,
                      12.h,
                      horizontalPadding,
                      24.h,
                    ),
                    children: [
                      EditProfilePhotoPicker(onTap: _showPhotoMessage),
                      SizedBox(height: 22.h),
                      EditProfileSectionCard(
                        title: context.l10n.editProfilePersonalInformation,
                        children: [
                          AppTextField(
                            label: context.l10n.editProfileFullName,
                            controller: _nameController,
                            textCapitalization: TextCapitalization.words,
                            validator: _requiredValidator,
                          ),
                          SizedBox(height: 12.h),
                          AppTextField(
                            label: context.l10n.editProfileAge,
                            controller: _ageController,
                            type: AppTextFieldType.number,
                            validator: (value) {
                              final age = int.tryParse(value ?? '');
                              if (age == null || age < 1 || age > 120) {
                                return context.l10n.editProfileInvalidAge;
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 12.h),
                          EditProfileGenderSelector(
                            value: _gender,
                            onChanged: (value) =>
                                setState(() => _gender = value),
                          ),
                          SizedBox(height: 12.h),
                          EditProfilePhoneField(
                            controller: _phoneController,
                            countryCode: _countryCode,
                            onCountryCodeChanged: (value) =>
                                setState(() => _countryCode = value),
                            validator: _requiredValidator,
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      EditProfileSectionCard(
                        title: context.l10n.editProfileProfessionalInformation,
                        children: [
                          AppTextField(
                            label: context.l10n.editProfileJobTitle,
                            controller: _jobTitleController,
                            textCapitalization: TextCapitalization.words,
                            validator: _requiredValidator,
                          ),
                          SizedBox(height: 12.h),
                          AppDropdown<String>(
                            label: context.l10n.editProfileMilitaryStatus,
                            value: _militaryStatus,
                            items: _dropdownItems([
                              ('exempted', context.l10n.editProfileExempted),
                              ('completed', context.l10n.editProfileCompleted),
                              ('postponed', context.l10n.editProfilePostponed),
                              (
                                'notApplicable',
                                context.l10n.editProfileNotApplicable,
                              ),
                            ]),
                            onChanged: (value) {
                              if (value != null) {
                                setState(() => _militaryStatus = value);
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      EditProfileSectionCard(
                        title: context.l10n.editProfileLocation,
                        children: [
                          AppDropdown<String>(
                            label: context.l10n.editProfileCountry,
                            value: _country,
                            items: _dropdownItems([
                              ('egypt', context.l10n.editProfileEgypt),
                              (
                                'saudiArabia',
                                context.l10n.editProfileSaudiArabia,
                              ),
                              (
                                'unitedArabEmirates',
                                context.l10n.editProfileUnitedArabEmirates,
                              ),
                            ]),
                            onChanged: (value) {
                              if (value != null) {
                                setState(() => _country = value);
                              }
                            },
                          ),
                          SizedBox(height: 12.h),
                          AppDropdown<String>(
                            label: context.l10n.editProfileGovernorate,
                            value: _governorate,
                            items: _dropdownItems([
                              ('cairo', context.l10n.cairo),
                              (
                                'alexandria',
                                context.l10n.editProfileAlexandria,
                              ),
                              ('giza', context.l10n.giza),
                            ]),
                            onChanged: (value) {
                              if (value != null) {
                                setState(() => _governorate = value);
                              }
                            },
                          ),
                          SizedBox(height: 12.h),
                          AppDropdown<String>(
                            label: context.l10n.editProfileCity,
                            value: _city,
                            items: _dropdownItems([
                              ('nasrCity', context.l10n.editProfileNasrCity),
                              ('maadi', context.l10n.editProfileMaadi),
                              (
                                'heliopolis',
                                context.l10n.editProfileHeliopolis,
                              ),
                            ]),
                            onChanged: (value) {
                              if (value != null) {
                                setState(() => _city = value);
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      EditProfileSectionCard(
                        title: context.l10n.editProfileProfessionalLinks,
                        children: [
                          EditProfileOptionalLinkField(
                            label: context.l10n.profileGithub,
                            icon: Icons.code_rounded,
                            controller: _githubController,
                          ),
                          SizedBox(height: 12.h),
                          EditProfileOptionalLinkField(
                            label: context.l10n.profileLinkedin,
                            icon: Icons.work_outline_rounded,
                            controller: _linkedinController,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      AppButton(
                        text: context.l10n.editProfileSaveChanges,
                        onPressed: _saveChanges,
                        height: 48.h,
                        borderRadius: AppRadius.radius12,
                        textStyle: AppTextStyles.buttonSmall,
                      ),
                      SizedBox(height: 4.h),
                      AppButton(
                        text: context.l10n.editProfileCancel,
                        variant: AppButtonVariant.text,
                        foregroundColor: AppColors.textSecondary,
                        onPressed: () => context.pop(),
                        height: 48.h,
                        textStyle: AppTextStyles.buttonSmall,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _dropdownItems(
    List<(String, String)> options,
  ) {
    return options
        .map(
          (option) =>
              DropdownMenuItem(value: option.$1, child: Text(option.$2)),
        )
        .toList();
  }

  String? _requiredValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return context.l10n.fieldRequired;
    }
    return null;
  }

  void _saveChanges() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    AppSnackBar.success(context, message: context.l10n.editProfileSaved);
    context.pop();
  }

  void _showPhotoMessage() {
    AppSnackBar.info(
      context,
      message: context.l10n.editProfilePhotoUnavailable,
    );
  }
}
