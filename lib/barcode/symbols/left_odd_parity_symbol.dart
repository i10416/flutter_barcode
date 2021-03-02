import 'package:flutter_barcode/barcode/specification/barcode_specification.dart';
import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';

class LeftOddParityModule extends BarcodeSymbol
    with JANBarcodeModuleSpecification {
  LeftOddParityModule({String? value}) : super(value: value);

  @override
  LeftOddParityModule setValue(String v) => LeftOddParityModule(value: v);

  @override
  List<bool>? toPattern() => patternSpecification[value];
}
