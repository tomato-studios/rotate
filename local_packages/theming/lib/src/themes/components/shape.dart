import 'package:flutter/material.dart';
import 'package:theming/src/themes/components/border_radius.dart';

class Shapes {
  _Round get round => _Round();
}

class _Round {
  _RoundAll get all => _RoundAll();
  _RoundTop get top => _RoundTop();
}

class _RoundAll {
  RoundedRectangleBorder get xs =>
      RoundedRectangleBorder(borderRadius: BorderRadii().all.xs);
  RoundedRectangleBorder get s =>
      RoundedRectangleBorder(borderRadius: BorderRadii().all.s);
  RoundedRectangleBorder get m =>
      RoundedRectangleBorder(borderRadius: BorderRadii().all.m);
  RoundedRectangleBorder get l =>
      RoundedRectangleBorder(borderRadius: BorderRadii().all.l);
  RoundedRectangleBorder get xl =>
      RoundedRectangleBorder(borderRadius: BorderRadii().all.xl);
}

class _RoundTop {
  RoundedRectangleBorder get xs =>
      RoundedRectangleBorder(borderRadius: BorderRadii().top.xs);
  RoundedRectangleBorder get s =>
      RoundedRectangleBorder(borderRadius: BorderRadii().top.s);
  RoundedRectangleBorder get m =>
      RoundedRectangleBorder(borderRadius: BorderRadii().top.m);
  RoundedRectangleBorder get l =>
      RoundedRectangleBorder(borderRadius: BorderRadii().top.l);
  RoundedRectangleBorder get xl =>
      RoundedRectangleBorder(borderRadius: BorderRadii().top.xl);
}
