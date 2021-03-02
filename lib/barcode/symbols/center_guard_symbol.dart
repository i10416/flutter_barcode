import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class CenterGuardSymbol extends BarcodeSymbol {
  CenterGuardSymbol():super(value:' █ █ ');


  @override
  List<bool> toPattern() => [false, true, false, true, false];

  @override
  BarcodeSymbol setValue(String v) => this;
}
