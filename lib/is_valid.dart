final RegExp postcodeRegex = RegExp(
  r"^[a-z]{1,2}\d[a-z\d]?\s*\d[a-z]{2}",
  caseSensitive: false,
  multiLine: false,
);

final RegExp spaceRegex = RegExp(r"\s+");

/// Returns [postcode] if is valid, value boolean.
bool isValid(String postcode) => postcodeRegex.hasMatch(postcode);

/// Returns [string] remove space in string and return value Upper Case.
String sanitize(String string) =>
    string.replaceAll(spaceRegex, "").toUpperCase();
