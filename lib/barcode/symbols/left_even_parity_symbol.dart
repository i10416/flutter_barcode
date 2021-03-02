import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/left_odd_parity_symbol.dart';

class LeftEvenParityModule implements BarcodeSymbol {
  LeftEvenParityModule({this.value});

  @override
  final String? value;

  @override
  LeftEvenParityModule setValue(String v) => LeftEvenParityModule(value: v);

  @override
  List<bool> toPattern() => LeftOddParityModule(value: value)
      .toPattern()!
      .reversed
      .map((b) => !b)
      .toList();
}
