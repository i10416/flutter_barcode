abstract class BarcodeSymbol {
  BarcodeSymbol({this.value});

  final String? value;

  List<bool>? toPattern();

  BarcodeSymbol setValue(String v);
}
