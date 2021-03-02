import 'package:flutter_barcode/barcode/specification/barcode_specification.dart';
import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class MW7BarcodeSymbol extends BarcodeSymbol with NW7BarcodeModuleMixin {
  MW7BarcodeSymbol({required String value}) : super(value: value);

  @override
  BarcodeSymbol setValue(String v) => MW7BarcodeSymbol(value: v);

  @override
  List<bool> toPattern() => patternSpecification[value]!;
}
