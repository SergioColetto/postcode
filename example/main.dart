import 'package:postcode/postcode.dart';

void main() {
  final POSTCODE = "sn3 3ey";
  final NOT_POSTCODE = "3ab eye";
  print(isValid(POSTCODE)); // => true
  print(isValid(NOT_POSTCODE)); // => false
}
