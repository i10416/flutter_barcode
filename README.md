# flutter_barcode

A custom widget which generates and displays a barcode.

## Spec

- JAN
- NW7

## install

```yaml:pubspec.yaml

```

## Example

```dart

  Card(
    child: BarcodePaint(
    Barcode.jan("<here's barcode value>"), // or Barcode.nw7("<...>")
    size: Size(100,50),
    )
  );
```