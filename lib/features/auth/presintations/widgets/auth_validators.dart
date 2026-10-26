import 'package:flutter/material.dart';
import 'package:skillmatch/core/utils/app_validator.dart';
import 'package:skillmatch/generated/l10n.dart';

abstract final class AuthValidators {
  static FormFieldValidator<String> email(S l10n) => AppValidators.email(
    emptyMessage: l10n.emailRequired,
    invalidMessage: l10n.validEmailRequired,
  );

  static FormFieldValidator<String> required(S l10n) =>
      AppValidators.required(message: l10n.fieldRequired);

  static FormFieldValidator<String> password(S l10n) {
    return AppValidators.compose([
      AppValidators.required(message: l10n.passwordRequired),
      AppValidators.minLength(8, message: l10n.passwordMinimumLength),
      (value) {
        if (value != null &&
            value.isNotEmpty &&
            !RegExp(r'\d').hasMatch(value)) {
          return l10n.passwordIncludeNumber;
        }
        return null;
      },
    ]);
  }

  static FormFieldValidator<String> confirmPassword(
    TextEditingController passwordController,
    S l10n,
  ) {
    return AppValidators.compose([
      AppValidators.required(message: l10n.confirmPasswordRequired),
      AppValidators.confirmPassword(
        passwordController,
        message: l10n.passwordsDoNotMatch,
      ),
    ]);
  }
}
