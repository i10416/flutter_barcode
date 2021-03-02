abstract class BarcodeSymbol {
  BarcodeSymbol({required this.value});

  final String value;

  List<bool> toPattern();

  BarcodeSymbol setValue(String v);
}
