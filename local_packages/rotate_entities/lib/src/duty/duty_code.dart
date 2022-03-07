import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'duty_code.freezed.dart';

@freezed
class DutyCode with _$DutyCode {
  const DutyCode._();
  const factory DutyCode({required String id, required String name}) =
      _DutyCode;

  //! FOR DATABASE ACCESS / MUST MATCH ATTRIBUTE NAMES
  static const $id = 'id';
  static const $name = 'name';

  factory DutyCode.fromJson(Map<String, dynamic> json) =>
      _$DutyCodeFromJson(json);

  static List<DutyCode> listFromJsonString(String jsonString) {
    return (jsonDecode(jsonString) as List)
        .map((json) => DutyCode.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
