import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class LeftGuardSymbol implements BarcodeSymbol {
  LeftGuardSymbol({this.value});

  @override
  final String value;

  @override
  List<bool> toPattern() => [true, false, true];

  @override
  BarcodeSymbol setValue(String _) => this;
}
