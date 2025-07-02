
import 'package:flutter_test/flutter_test.dart';
import 'package:extensions/extensions.dart';
import 'package:extensions/constant/constant.dart';

void main() {
  group('NonNullString extension', () {
    test('orEmpty returns Constants.empty for null String', () {
      String? nullString;
      expect(nullString.orEmpty(), Constants.empty);
    });

    test('orEmpty returns Constants.empty for empty String', () {
      String? emptyString = '';
      expect(emptyString.orEmpty(), Constants.empty);
    });

    test('orEmpty returns the original String for non-empty String', () {
      String? nonEmptyString = 'Hello';
      expect(nonEmptyString.orEmpty(), 'Hello');
    });
  });

  group('NonNullInteger extension', () {
    test('orZero returns Constants.zero for null int', () {
      int? nullInt;
      expect(nullInt.orZero(), Constants.zero);
    });

    test('orZero returns the original int for non-null int', () {
      int? nonNullInt = 42;
      expect(nonNullInt.orZero(), 42);
    });
  });
}
