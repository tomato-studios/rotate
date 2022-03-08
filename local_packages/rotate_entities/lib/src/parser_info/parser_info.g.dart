// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parser_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParserInfo _$$_ParserInfoFromJson(Map<String, dynamic> json) =>
    _$_ParserInfo(
      source: json['source'] as String,
      regex_strings: Map<String, String>.from(json['regex_strings'] as Map),
      time_formats: Map<String, String>.from(json['time_formats'] as Map),
    );

Map<String, dynamic> _$$_ParserInfoToJson(_$_ParserInfo instance) =>
    <String, dynamic>{
      'source': instance.source,
      'regex_strings': instance.regex_strings,
      'time_formats': instance.time_formats,
    };
