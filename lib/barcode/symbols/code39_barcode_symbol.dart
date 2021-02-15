import 'package:flutter_barcode/barcode/specification/barcode_specification.dart';
import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class Code39BarcodeSymbol extends BarcodeSymbol
    with CODE39BarcodeModuleSpecification {
  Code39BarcodeSymbol({String value}) : super(value: value);

  @override
  BarcodeSymbol setValue(String v) => Code39BarcodeSymbol(value: v);

  @override
  List<bool> toPattern() => patternSpecification[value];
}
