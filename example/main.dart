import 'package:flutter/material.dart';
import 'package:flutter_barcode/barcode/model/barcode.dart';
import 'package:flutter_barcode/barcode/presenter/barcode_paint.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: Column(children: [
      BarcodePaint(
        Barcode.jan('4011200296908'),
        // or Barcode.nw7("<...>")
        size: const Size(100, 50),
      ),
      Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: const Text('4011200296908'))
    ])),
  ));
}
