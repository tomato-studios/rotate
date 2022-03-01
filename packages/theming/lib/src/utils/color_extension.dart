import 'package:flutter/material.dart';

extension ColorX on Color {
  // Source: https://stackoverflow.com/questions/58360989/programmatically-lighten-or-darken-a-hex-color-in-dart
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  /// Black or white for text on this color
  Color get textColor =>
      ThemeData.estimateBrightnessForColor(this) == Brightness.light
          ? ThemeData.light().textTheme.bodyText1!.color!
          : ThemeData.dark().textTheme.bodyText1!.color!;
}
