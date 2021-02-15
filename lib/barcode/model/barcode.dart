import 'package:flutter_barcode/barcode/model/jan_barcode.dart';
import 'package:flutter_barcode/barcode/model/nw7_barcode.dart';

enum BarcodeType { jan, code39, nw7 }

abstract class Barcode {
  static Barcode jan(String rawValue) {
    if (rawValue.length != 13) {
      throw ArgumentError();
    }
    return JANBarcode(rawValue: rawValue);
  }

  static Barcode nw7(String rawValue) => NW7Barcode(rawValue: rawValue);

  String get value;

  List<bool> toPattern();
}
