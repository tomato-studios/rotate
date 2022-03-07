import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rotate_entities/src/duty/duty.dart';

part 'roster.freezed.dart';

@freezed
class Roster with _$Roster {
  const Roster._();
  const factory Roster({
    required DateTime startDate,
    required DateTime endDate,
    required String userName,
    required String pkNumber,
    required List<Duty> dutyList,
  }) = _Roster;

  //! FOR DATABASE ACCESS / MUST MATCH ATTRIBUTE NAMES
  static const $startDate = 'icaoCode';
  static const $endDate = 'iataCode';
  static const $userName = 'name';
  static const $pkNumber = 'city';
  static const $dutyList = 'latitude';
}
