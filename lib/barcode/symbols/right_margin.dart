import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class RightMargin implements BarcodeSymbol {
  RightMargin({this.value});

  @override
  final String value;

  @override
  BarcodeSymbol setValue(String _) => this;

  @override
  List<bool> toPattern() => List<bool>.generate(7, (index) => false);
}
