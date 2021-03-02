import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class RightMargin extends BarcodeSymbol {
  RightMargin():super(value:'       ');

  @override
  BarcodeSymbol setValue(String v) => this;

  @override
  List<bool> toPattern() => List<bool>.generate(7, (index) => false);
}
