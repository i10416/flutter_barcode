import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class LeftMargin extends BarcodeSymbol {
  LeftMargin():super(value:'           ');

  @override
  BarcodeSymbol setValue(String v) => this;

  @override
  List<bool> toPattern() => List<bool>.generate(11, (index) => false);
}
