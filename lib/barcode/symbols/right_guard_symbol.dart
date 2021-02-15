import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/left_guard_symbol.dart';

class RightGuardSymbol implements BarcodeSymbol {
  RightGuardSymbol({this.value});

  @override
  final String value;

  @override
  List<bool> toPattern() => LeftGuardSymbol(value: value).toPattern();

  @override
  BarcodeSymbol setValue(String _) => this;
}
