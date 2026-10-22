import 'package:flutter/material.dart';
import 'package:skillmatch/core/utils/app_validator.dart';

abstract final class AuthValidators {
  static final FormFieldValidator<String> email = AppValidators.email(
    emptyMessage: 'Email is required.',
    invalidMessage: 'Enter a valid email address.',
  );

  static final FormFieldValidator<String> required = AppValidators.required(
    message: 'This field is required.',
  );

  static FormFieldValidator<String> password() {
    return AppValidators.compose([
      AppValidators.required(message: 'Password is required.'),
      AppValidators.minLength(8, message: 'Use at least 8 characters.'),
      (value) {
        if (value != null &&
            value.isNotEmpty &&
            !RegExp(r'\d').hasMatch(value)) {
          return 'Include at least one number.';
        }
        return null;
      },
    ]);
  }

  static FormFieldValidator<String> confirmPassword(
    TextEditingController passwordController,
  ) {
    return AppValidators.compose([
      AppValidators.required(message: 'Please confirm your password.'),
      AppValidators.confirmPassword(
        passwordController,
        message: 'Passwords do not match.',
      ),
    ]);
  }
}
