import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'parser_info.freezed.dart';
part 'parser_info.g.dart';

@freezed
class ParserInfo with _$ParserInfo {
  const ParserInfo._();
  const factory ParserInfo({
    required String source,
    required Map<String, String> regex_strings,
    required Map<String, String> time_formats,
  }) = _ParserInfo;

  //! FOR DATABASE ACCESS / MUST MATCH ATTRIBUTE NAMES
  static const $source = 'source';
  static const $regex_strings = 'regex_strings';
  static const $time_formats = 'time_formats';

  factory ParserInfo.fromJson(Map<String, dynamic> json) =>
      _$ParserInfoFromJson(json);

  static ParserInfo rawFromJson(String jsonString) {
    return ParserInfo.fromJson(jsonDecode(jsonString) as Map<String, dynamic>);
  }

  static List<ParserInfo> listFromJsonString(String jsonString) {
    return (jsonDecode(jsonString) as List)
        .map((json) => ParserInfo.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
