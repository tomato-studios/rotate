import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'parser_info.freezed.dart';

@freezed
class ParserInfo with _$ParserInfo {
  const ParserInfo._();
  const factory ParserInfo({required String id, required String name}) =
      _ParserInfo;

  //! FOR DATABASE ACCESS / MUST MATCH ATTRIBUTE NAMES
  static const $source = 'id';
  static const $regexStrings = 'name';
  static const $time_formats = 'time_formats';

  factory ParserInfo.fromJson(String json) =>
      _$ParserInfoFromJson(json as Map<String, dynamic>);

  static List<ParserInfo> listFromJsonString(String jsonString) {
    return (jsonDecode(jsonString) as List)
        .map((json) => ParserInfo.fromJson(jsonString))
        .toList();
  }
}
