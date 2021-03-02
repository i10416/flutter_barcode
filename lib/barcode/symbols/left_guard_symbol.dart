import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class LeftGuardSymbol extends BarcodeSymbol {
  LeftGuardSymbol():super(value: '█ █');


  @override
  List<bool> toPattern() => [true, false, true];

  @override
  BarcodeSymbol setValue(String v) => this;
}
