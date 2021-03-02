import 'package:flutter_barcode/barcode/model/barcode.dart';
import 'package:flutter_barcode/barcode/symbols/left_margin.dart';
import 'package:flutter_barcode/barcode/symbols/nw7_barcode_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/right_margin.dart';

class NW7Barcode extends Barcode {
  NW7Barcode({required this.rawValue}) : super();

  final String rawValue;

  @override
  List<bool> toPattern() =>
      LeftMargin().toPattern() +
      rawValue
          .split('')
          .expand((v) => MW7BarcodeSymbol(value: v).toPattern()!)
          .toList() +
      RightMargin().toPattern();

  @override
  String get value => rawValue;
}
