
import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/left_even_parity_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/left_odd_parity_symbol.dart';

mixin JANBarcodeModuleSpecification on BarcodeSymbol {
  Map<String, List<bool>> patternSpecification = {
    '0': <bool>[false, false, false, true, true, false, true],
    '1': <bool>[false, false, true, true, false, false, true],
    '2': <bool>[false, false, true, false, false, true, true],
    '3': <bool>[false, true, true, true, true, false, true],
    '4': <bool>[false, true, false, false, false, true, true],
    '5': <bool>[false, true, true, false, false, false, true],
    '6': <bool>[false, true, false, true, true, true, true],
    '7': <bool>[false, true, true, true, false, true, true],
    '8': <bool>[false, true, true, false, true, true, true],
    '9': <bool>[false, false, false, true, false, true, true],
  };

  bool isValid(String value) => patternSpecification.keys.contains(value);
}

/// 与えられた文字列の先頭の値に応じて、左側6桁のパターンが変わる.
mixin JANBarcodeSpecification {
  Map<String, List<BarcodeSymbol>> leftParitySpecification = {
    '0': [
      LeftOddParityModule(),
      LeftOddParityModule(),
      LeftOddParityModule(),
      LeftOddParityModule(),
      LeftOddParityModule(),
      LeftOddParityModule()
    ],
    '1': [
      LeftOddParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftEvenParityModule(),
    ],
    '2': [
      LeftOddParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
    ],
    '3': [
      LeftOddParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftEvenParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
    ],
    '4': [
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftEvenParityModule(),
    ],
    '5': [
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
    ],
    '6': [
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftEvenParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
      LeftOddParityModule(),
    ],
    '7': [
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
    ],
    '8': [
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
    ],
    '9': [
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
      LeftEvenParityModule(),
      LeftOddParityModule(),
    ],
  };
}


mixin CODE39BarcodeModuleSpecification on BarcodeSymbol {
  Map<String,List<bool>> patternSpecification = {
    '0':<bool>[true,false,true,false,false,true,true,false,true,true,false,true],
    '1':<bool>[true,true,false,true,false,false,true,false,true,false,true,true],
    '2':<bool>[true,false,true,true,false,false,true,false,true,false,true,true],
    '3':<bool>[true,true,false,true,true,false,false,true,false,true,false,true],
    '4':<bool>[true,false,true,false,false,true,true,false,true,false,true,true],
    '5':<bool>[true,true,false,true,false,false,true,true,false,true,false,true],
    '6':<bool>[true,false,true,true,false,false,true,true,false,true,false,true],
    '7':<bool>[true,false,true,false,false,true,false,true,true,false,true,true],
    '8':<bool>[true,true,false,true,false,false,true,false,true,true,false,true],
    '9':<bool>[true,false,true,true,false,false,true,false,true,true,false,true],
    'a':<bool>[true,true,false,true,false,true,false,false,true,false,true,true],
    'b':<bool>[true,false,true,true,false,true,false,false,true,false,true,true],
    'c':<bool>[true,true,false,true,true,false,true,false,false,true,false,true],
    'd':<bool>[true,false,true,false,true,true,false,false,true,false,true,true],
    'e':<bool>[true,true,false,true,false,true,true,false,false,true,false,true],
    'f':<bool>[true,false,true,true,false,true,true,false,false,true,false,true],
    'g':<bool>[true,false,true,false,true,false,false,true,true,false,true,true],
    'h':<bool>[true,true,false,true,false,true,false,false,true,true,false,true],
    'i':<bool>[true,false,true,true,false,true,false,false,true,true,false,true],
    'j':<bool>[true,false,true,false,true,true,false,false,true,true,false,true],
    'k':<bool>[true,true,false,true,false,true,false,true,false,false,true,true],
    'l':<bool>[true,false,true,true,false,true,false,true,false,false,true,true],
    'm':<bool>[true,true,false,true,true,false,true,false,true,false,false,true],
    'n':<bool>[true,false,true,false,true,true,false,true,false,false,true,true],
    'o':<bool>[true,true,false,true,false,true,true,false,true,false,false,true],
    'p':<bool>[true,false,true,true,false,true,true,false,true,false,false,true],
    'q':<bool>[true,false,true,false,true,false,true,true,false,false,true,true],
    'r':<bool>[true,true,false,true,false,true,false,true,true,false,false,true],
    's':<bool>[true,false,true,true,false,true,false,true,true,false,false,true],
    't':<bool>[true,false,true,false,true,true,false,true,true,false,false,true],
    'u':<bool>[false,false,false,false,true,false,true,false,true,false,true,true],
    'v':<bool>[true,false,false,true,true,false,true,false,true,false,true,true],
    'w':<bool>[true,true,false,false,true,true,false,true,false,true,false,true],
    'x':<bool>[true,false,false,true,false,true,true,false,true,false,true,true],
    'y':<bool>[true,true,false,false,true,false,true,true,false,true,false,true],
    'z':<bool>[true,false,false,true,true,false,true,true,false,true,false,true],
    '-':<bool>[true,false,false,true,false,true,false,true,true,false,true,true],
    '.':<bool>[true,true,false,false,true,false,true,false,true,true,false,true],
    'SPACE':<bool>[true,false,false,true,true,false,true,false,true,true,false,true],
    '\$':<bool>[true,false,false,true,false,false,true,false,false,true,false,true],
    '/':<bool>[true,false,false,true,false,false,true,false,true,false,false,true],
    '+':<bool>[true,false,false,true,false,true,false,false,true,false,false,true],
    '%':<bool>[true,false,true,false,false,true,false,false,true,false,false,true],
    '*':<bool>[true,false,false,true,false,true,true,false,true,true,false,true],
  };
  bool isValid(String value)=>patternSpecification.keys.contains(value);
}

mixin NW7BarcodeModuleMixin on BarcodeSymbol {
  Map<String,List<bool>> patternSpecification = {
    '0':<bool>[true,false,true,false,true,false,false,true,true],
    '1':<bool>[true,false,true,false,true,true,false,false,true],
    '2':<bool>[true,false,true,false,false,true,false,true,true],
    '3':<bool>[true,true,false,false,true,false,true,false,true],
    '4':<bool>[true,false,true,true,false,true,false,false,true],
    '5':<bool>[true,true,false,true,false,true,false,false,true],
    '6':<bool>[true,false,false,true,false,true,false,true,true],
    '7':<bool>[true,false,false,true,false,true,true,false,true],
    '8':<bool>[true,false,false,true,true,false,true,false,true],
    '9':<bool>[true,true,false,true,false,false,true,false,true],
    '-':<bool>[true,false,true,false,false,true,true,false,true,false],
    '\$':<bool>[true,false,true,true,false,false,true,false,true,false],
    ':':<bool>[true,true,false,true,false,true,true,false,true,true],
    '/':<bool>[true,true,false,true,true,false,true,false,true,true],
    '.':<bool>[true,true,false,true,true,false,true,true,false,true],
    '+':<bool>[true,false,true,true,false,true,true,false,true,true],
    'a':<bool>[true,false,true,true,false,false,true,false,false,true],
    'b':<bool>[true,false,false,true,false,false,true,false,true,true],
    'c':<bool>[true,false,true,false,false,true,false,false,true,true],
    'd':<bool>[true,false,true,false,false,true,true,false,false,true],
  };
}