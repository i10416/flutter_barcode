import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class LeftMargin implements BarcodeSymbol {
  LeftMargin({this.value});

  @override
  final String? value;

  @override
  BarcodeSymbol setValue(String _) => this;

  @override
  List<bool> toPattern() => List<bool>.generate(11, (index) => false);
}
