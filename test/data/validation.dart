import 'package:postcode/postcode.dart';

class Validation {
  static final POSTCODES_VALIDATION = '''[
                                {
                                  "base" : "L27 8XY",
                                  "expected" : true
                                },
                                {
                                  "base" : "NR103EZ",
                                  "expected" : true
                                },
                                {
                                  "base" : "RG45AY",
                                  "expected" : true
                                },
                                {
                                  "base" : "NE69 7AW",
                                  "expected" : true
                                },
                                {
                                  "base" : "SE23 2NF",
                                  "expected" : true
                                },
                                {
                                  "base" : "Definitely wrong",
                                  "expected" : false
                                },
                                {
                                  "base" : "12FSSD",
                                  "expected" : false
                                },
                                {
                                  "base" : "1A1 1AA",
                                  "expected" : false
                                },
                                {
                                  "base" : "MA1 1AA",
                                  "expected" : true
                                },
                                {
                                  "base" : "EH1 JS",
                                  "expected" : false
                                },
                                {
                                  "base" : "EH1JS",
                                  "expected" : false
                                },
                                {
                                  "base" : "EH 1JS",
                                  "expected" : false
                                },
                                {
                                  "base" : "BT35 8GE",
                                  "expected" : true
                                }
                              ]''';

  static final SANITIZE_VALIDATION = '''[
                                {
                                  "base" : "L27 8XY",
                                  "expected" : "L278XY"
                                },
                                {
                                  "base" : "NR103EZ",
                                  "expected" : "NR103EZ"
                                },
                                {
                                  "base" : "RG45AY",
                                  "expected" : "RG45AY"
                                },
                                {
                                  "base" : "NE69 7AW   ",
                                  "expected" : "NE697AW"
                                },
                                {
                                  "base" : "SE 23 2N   F",
                                  "expected" : "SE232NF"
                                },
                                {
                                  "base" : "Definitely wrong",
                                  "expected" : "DEFINITELYWRONG"
                                },
                                {
                                  "base" : "12FSSD",
                                  "expected" : "12FSSD"
                                }
                              ]''';
}
