// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duty_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DutyCode _$$_DutyCodeFromJson(Map<String, dynamic> json) => _$_DutyCode(
      id: json['id'] as String,
      name: json['name'] as String,
      codes: (json['codes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_DutyCodeToJson(_$_DutyCode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'codes': instance.codes,
    };
