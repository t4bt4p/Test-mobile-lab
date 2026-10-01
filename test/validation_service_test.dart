import 'package:flutter_test/flutter_test.dart';
import 'package:task_tracker_app/validation_service.dart';

void main() {
  const validationService = ValidationService();

  group('ValidationService.isValidString', () {
    test('returns true for valid text', () {
      expect(validationService.isValidString('Hello World'), isTrue);
    });

    test('returns false for an empty string', () {
      expect(validationService.isValidString(''), isFalse);
    });

    test('returns false for null', () {
      expect(validationService.isValidString(null), isFalse);
    });

    test('returns false for whitespace only', () {
      expect(validationService.isValidString('   '), isFalse);
    });
  });
}
