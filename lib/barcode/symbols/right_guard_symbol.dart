import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/left_guard_symbol.dart';

class RightGuardSymbol extends BarcodeSymbol {
  RightGuardSymbol() : super(value: '█ █');

  @override
  List<bool> toPattern() => LeftGuardSymbol().toPattern();

  @override
  BarcodeSymbol setValue(String v) => this;
}
