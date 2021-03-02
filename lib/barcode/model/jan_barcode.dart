import 'package:flutter_barcode/barcode/model/barcode.dart';
import 'package:flutter_barcode/barcode/specification/barcode_specification.dart';
import 'package:flutter_barcode/barcode/symbols/barcode_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/center_guard_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/left_guard_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/left_margin.dart';
import 'package:flutter_barcode/barcode/symbols/right_guard_symbol.dart';
import 'package:flutter_barcode/barcode/symbols/right_margin.dart';
import 'package:flutter_barcode/barcode/symbols/right_parity_symbol.dart';

class JANBarcode extends Barcode with JANBarcodeSpecification {
  JANBarcode({required this.rawValue}) : super();

  final String rawValue;

  @override
  List<bool>? toPattern() {
    final head = rawValue[0];
    final body = rawValue.substring(1);
    final leftBlockSymbols = leftParitySpecification[head]!
        .asMap()
        .entries
        .map((e) => e.value.setValue(body[e.key]))
        .toList();
    final rightBlockSymbols = List<BarcodeSymbol>.generate(6,
            (index) => RightParityModule().setValue(body.substring(6)[index]))
        .toList();
    final numberSymbolsOrigin = <BarcodeSymbol>[
      LeftMargin(),
      LeftGuardSymbol(),
      ...leftBlockSymbols,
      CenterGuardSymbol(),
      ...rightBlockSymbols,
      RightGuardSymbol(),
      RightMargin(),
    ];
    return numberSymbolsOrigin.expand((e) => e.toPattern()!).toList();
  }

  @override
  String get value => rawValue;
}
