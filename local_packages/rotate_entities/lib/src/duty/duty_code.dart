import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'duty_code.freezed.dart';
part 'duty_code.g.dart';

@freezed
class DutyCode with _$DutyCode {
  const DutyCode._();
  const factory DutyCode({
    required String id,
    required String name,
    required List<String> codes,
  }) = _DutyCode;

  //! FOR DATABASE ACCESS / MUST MATCH ATTRIBUTE NAMES
  static const $id = 'id';
  static const $name = 'name';
  static const $codes = 'codes';

  factory DutyCode.fromJson(Map<String, dynamic> json) =>
      _$DutyCodeFromJson(json);

  static List<DutyCode> listFromJsonString(String jsonString) {
    return (jsonDecode(jsonString) as List)
        .map((json) => DutyCode.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
