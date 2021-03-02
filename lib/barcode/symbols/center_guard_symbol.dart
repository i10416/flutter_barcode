import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class CenterGuardSymbol implements BarcodeSymbol {
  CenterGuardSymbol({this.value});

  @override
  final String? value;

  @override
  List<bool> toPattern() => [false, true, false, true, false];

  @override
  BarcodeSymbol setValue(String _) => this;
}
