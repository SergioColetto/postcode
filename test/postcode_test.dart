import 'package:flutter_test/flutter_test.dart';

import 'package:postcode/postcode.dart';

import 'data/validation.dart';
import 'dart:convert';

void main() {
  test('adds postcode and return if postcode valid true or false', () {
    final postcode = Postcode();
    final data = json.decode(Validation.POSTCODES_VALIDATION);

    data.forEach((sample) =>
        expect(postcode.isValid(sample['base']), sample['expected']));
  });

  test('add string with space and return string without space', () {
    final postcode = Postcode();
    final data = json.decode(Validation.SANITIZE_VALIDATION);

    data.forEach((sample) =>
        expect(postcode.sanitize(sample['base']), sample['expected']));
  });
}
