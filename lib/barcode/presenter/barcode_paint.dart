import 'package:flutter/material.dart';
import 'package:flutter_barcode/barcode/model/barcode.dart';
/// widget to display barcode image
class BarcodePaint extends StatelessWidget {
  /// バーコードの読み込み安定化のため、[padding]で上下の余白の指定を推奨
  const BarcodePaint(this.barcode,
      {required this.size,
      this.padding = EdgeInsets.zero,
      this.borderRadius = BorderRadius.zero});

  final Barcode barcode;

  /// size of barcode
  final Size size;
  final BorderRadiusGeometry borderRadius;

  // padding around barcode
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) => Container(
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
        ),
        child: CustomPaint(
          size: size,
          painter: _SquarePainter(
              barcode.toPattern(),
              Size(size.width - padding.horizontal,
                  size.height - padding.vertical)),
        ),
      );
}

class _SquarePainter extends CustomPainter {
  _SquarePainter(this.barcodePattern, this.size) : super();
  final List<bool> barcodePattern;
  final Size size;

  @override
  void paint(Canvas canvas, Size size) {
    final filledPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    final emptyPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    final unitWidth = size.width / barcodePattern.length;
    final rects = List<Rect>.generate(barcodePattern.length,
        (index) => Rect.fromLTWH(unitWidth * index, 0, unitWidth, size.height));
    barcodePattern.asMap().entries.forEach((e) {
      final idx = e.key;
      final isFilled = e.value;
      canvas.drawRect(rects[idx], isFilled ? filledPaint : emptyPaint);
    });
  }

  @override
  bool shouldRepaint(CustomPainter _) => false;
}
