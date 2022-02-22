import 'package:flutter/material.dart';

class BorderRadii {
  static const double valueXS = 4;
  static const double valueS = 8;
  static const double valueM = 12;
  static const double valueL = 16;
  static const double valueXL = 32;
  _All get all => _All();
  _Top get top => _Top();
}

class _All {
  BorderRadius get xs => BorderRadius.circular(BorderRadii.valueXS);
  BorderRadius get s => BorderRadius.circular(BorderRadii.valueS);
  BorderRadius get m => BorderRadius.circular(BorderRadii.valueM);
  BorderRadius get l => BorderRadius.circular(BorderRadii.valueL);
  BorderRadius get xl => BorderRadius.circular(BorderRadii.valueXL);
}

class _Top {
  BorderRadius get xs =>
      const BorderRadius.vertical(top: Radius.circular(BorderRadii.valueXS));
  BorderRadius get s =>
      const BorderRadius.vertical(top: Radius.circular(BorderRadii.valueS));
  BorderRadius get m =>
      const BorderRadius.vertical(top: Radius.circular(BorderRadii.valueM));
  BorderRadius get l =>
      const BorderRadius.vertical(top: Radius.circular(BorderRadii.valueL));
  BorderRadius get xl =>
      const BorderRadius.vertical(top: Radius.circular(BorderRadii.valueXL));
}
