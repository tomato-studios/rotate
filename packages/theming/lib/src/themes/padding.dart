import 'package:flutter/material.dart';

class Paddings {
  static const double valueXS = 4;
  static const double valueS = 8;
  static const double valueM = 12;
  static const double valueL = 16;
  static const double valueXL = 32;
  All get all => All();
  Top get top => Top();
  Bottom get bottom => Bottom();
  Horizontal get horizontal => Horizontal();
}

class All {
  EdgeInsets get xs => const EdgeInsets.all(Paddings.valueXS);
  EdgeInsets get s => const EdgeInsets.all(Paddings.valueS);
  EdgeInsets get m => const EdgeInsets.all(Paddings.valueM);
  EdgeInsets get l => const EdgeInsets.all(Paddings.valueL);
  EdgeInsets get xl => const EdgeInsets.all(Paddings.valueXL);
}

class Top {
  EdgeInsets get xs => const EdgeInsets.only(top: Paddings.valueXS);
  EdgeInsets get s => const EdgeInsets.only(top: Paddings.valueS);
  EdgeInsets get m => const EdgeInsets.only(top: Paddings.valueM);
  EdgeInsets get l => const EdgeInsets.only(top: Paddings.valueL);
  EdgeInsets get xl => const EdgeInsets.only(top: Paddings.valueXL);
}

class Bottom {
  EdgeInsets get xs => const EdgeInsets.only(bottom: Paddings.valueXS);
  EdgeInsets get s => const EdgeInsets.only(bottom: Paddings.valueS);
  EdgeInsets get m => const EdgeInsets.only(bottom: Paddings.valueM);
  EdgeInsets get l => const EdgeInsets.only(bottom: Paddings.valueL);
  EdgeInsets get xl => const EdgeInsets.only(bottom: Paddings.valueXL);
}

class Horizontal {
  EdgeInsets get xs => const EdgeInsets.symmetric(horizontal: Paddings.valueXS);
  EdgeInsets get s => const EdgeInsets.symmetric(horizontal: Paddings.valueS);
  EdgeInsets get m => const EdgeInsets.symmetric(horizontal: Paddings.valueM);
  EdgeInsets get l => const EdgeInsets.symmetric(horizontal: Paddings.valueL);
  EdgeInsets get xl => const EdgeInsets.symmetric(horizontal: Paddings.valueXL);
}

class Vertical {
  EdgeInsets get xs => const EdgeInsets.symmetric(vertical: Paddings.valueXS);
  EdgeInsets get s => const EdgeInsets.symmetric(vertical: Paddings.valueS);
  EdgeInsets get m => const EdgeInsets.symmetric(vertical: Paddings.valueM);
  EdgeInsets get l => const EdgeInsets.symmetric(vertical: Paddings.valueL);
  EdgeInsets get xl => const EdgeInsets.symmetric(vertical: Paddings.valueXL);
}
