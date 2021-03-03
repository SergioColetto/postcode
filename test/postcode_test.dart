import 'package:flutter_test/flutter_test.dart';

import 'package:postcode/postcode.dart';

import 'data/validation.dart';
import 'dart:convert';

void main() {
  test('adds postcode and return if postcode valid true or false', () {
    final data = json.decode(POSTCODES_VALIDATION);

    data.forEach((sample) =>
        expect(isValid(sample['base']), sample['expected']));
  });

  test('add string with space and return string without space', () {
    final data = json.decode(SANITIZE_VALIDATION);

    data.forEach((sample) =>
        expect( sanitize(sample['base']), sample['expected'] ));
  });
}
