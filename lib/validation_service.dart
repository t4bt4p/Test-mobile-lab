class ValidationService {
  const ValidationService();

  bool isValidString(String? value) {
    return value != null && value.trim().isNotEmpty;
  }

  String? validateRequired(String? value, {required String fieldName}) {
    if (!isValidString(value)) {
      return 'Please enter $fieldName';
    }
    return null;
  }
}
