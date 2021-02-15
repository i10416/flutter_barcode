import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/left_odd_parity_symbol.dart';

class RightParityModule implements BarcodeSymbol {
  RightParityModule({this.value});

  @override
  final String value;

  @override
  List<bool> toPattern() =>
      LeftOddParityModule(value: value).toPattern().map((b) => !b).toList();

  @override
  BarcodeSymbol setValue(String v) => RightParityModule(value: v);
}
