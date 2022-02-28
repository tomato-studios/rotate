import 'package:flutter/material.dart';
import 'package:theming/src/themes/components/border_radius.dart';
import 'package:theming/src/themes/components/duration.dart';
import 'package:theming/src/themes/components/shape.dart';
import 'package:theming/src/themes/components/spacing.dart';
import 'package:theming/src/themes/padding.dart';
import 'package:theming/src/utils/create_material_color.dart';

MaterialColor get primarySwatch => createMaterialColor(Colors.teal.shade700);

double _bottomOffset = 0;

extension ThemeDataX on ThemeData {
  BorderRadii get borderRadius => BorderRadii();
  Shapes get shapeBorder => Shapes();
  Paddings get padding => Paddings();
  Durations get duration => Durations();
  Spacing get spacing => Spacing();

  /// Bottom offset by onscreen navigation elements
  set bottomOffset(double value) => _bottomOffset = value;

  /// Bottom offset by onscreen navigation elements
  double get bottomOffset => _bottomOffset;
}

extension ColorSchemeX on ColorScheme {
  /// onSurface with 50% opacity
  Color get onSurfaceLight => onSurface.withOpacity(0.5);
}
