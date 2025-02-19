class FormValidators {
  // Validate if the field is not empty
  static String? validateRequired(String? value, {String message = 'This field is required'}) {
    if (value == null || value.trim().isEmpty) {
      return message;
    }
    return null;
  }

  // Validate email format
  static String? validateEmail(String? value, {String message = 'Enter a valid email address'}) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    // Email regex pattern
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return message;
    }
    return null;
  }

  // Validate if value is a number
  static String? validateNumber(String? value, {String message = 'Enter a valid number'}) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    if (double.tryParse(value) == null) {
      return message;
    }
    return null;
  }

  // Validate minimum length
  static String? validateMinLength(String? value, int minLength, {String? message}) {
    if (value == null || value.trim().length < minLength) {
      return message ?? 'Minimum $minLength characters required';
    }
    return null;
  }

  // Validate maximum length
  static String? validateMaxLength(String? value, int maxLength, {String? message}) {
    if (value != null && value.trim().length > maxLength) {
      return message ?? 'Maximum $maxLength characters allowed';
    }
    return null;
  }

  // Validate password (example: at least 8 characters, one uppercase, one number, one special character)
  static String? validatePassword(String? value, {String message = 'Password must be at least 8 characters, include an uppercase letter, a number, and a special character'}) {
    if (value == null || value.trim().isEmpty) {
      return 'Password is required';
    }
    final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$');
    if (!passwordRegex.hasMatch(value)) {
      return message;
    }
    return null;
  }

  // Confirm password
  static String? validateConfirmPassword(String? value, String? originalPassword, {String message = 'Passwords do not match'}) {
    if (value != originalPassword) {
      return message;
    }
    return null;
  }
}
