import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'duty_element.freezed.dart';

@freezed
class DutyElement with _$DutyElement {
  const DutyElement._();
  const factory DutyElement({required String id, required String name}) =
      _DutyElement;

  //! FOR DATABASE ACCESS / MUST MATCH ATTRIBUTE NAMES
  static const $name = 'name';
  static const $description = 'description';
  static const $regex_group_id = 'regex_group_id';

  factory DutyElement.fromJson(Map<String, dynamic> json) =>
      _$DutyElementFromJson(json);

  static List<DutyElement> listFromJsonString(String jsonString) {
    return (jsonDecode(jsonString) as List)
        .map((json) => DutyElement.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
