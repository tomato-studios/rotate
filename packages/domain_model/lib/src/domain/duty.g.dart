// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Off _$$OffFromJson(Map<String, dynamic> json) => _$Off(
      dutyCode: json['dutyCode'] as String,
      start: timestampConverter.fromJson(json['start'] as Timestamp),
      end: timestampConverter.fromJson(json['end'] as Timestamp),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OffToJson(_$Off instance) => <String, dynamic>{
      'dutyCode': instance.dutyCode,
      'start': timestampConverter.toJson(instance.start),
      'end': timestampConverter.toJson(instance.end),
      'runtimeType': instance.$type,
    };

_$Layover _$$LayoverFromJson(Map<String, dynamic> json) => _$Layover(
      dutyCode: json['dutyCode'] as String,
      start: timestampConverter.fromJson(json['start'] as Timestamp),
      end: timestampConverter.fromJson(json['end'] as Timestamp),
      airport: json['airport'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LayoverToJson(_$Layover instance) => <String, dynamic>{
      'dutyCode': instance.dutyCode,
      'start': timestampConverter.toJson(instance.start),
      'end': timestampConverter.toJson(instance.end),
      'airport': instance.airport,
      'runtimeType': instance.$type,
    };

_$StandbyDuty _$$StandbyDutyFromJson(Map<String, dynamic> json) =>
    _$StandbyDuty(
      dutyCode: json['dutyCode'] as String,
      start: timestampConverter.fromJson(json['start'] as Timestamp),
      end: timestampConverter.fromJson(json['end'] as Timestamp),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StandbyDutyToJson(_$StandbyDuty instance) =>
    <String, dynamic>{
      'dutyCode': instance.dutyCode,
      'start': timestampConverter.toJson(instance.start),
      'end': timestampConverter.toJson(instance.end),
      'runtimeType': instance.$type,
    };

_$Reserve _$$ReserveFromJson(Map<String, dynamic> json) => _$Reserve(
      dutyCode: json['dutyCode'] as String,
      start: timestampConverter.fromJson(json['start'] as Timestamp),
      end: timestampConverter.fromJson(json['end'] as Timestamp),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReserveToJson(_$Reserve instance) => <String, dynamic>{
      'dutyCode': instance.dutyCode,
      'start': timestampConverter.toJson(instance.start),
      'end': timestampConverter.toJson(instance.end),
      'runtimeType': instance.$type,
    };

_$FlightDuty _$$FlightDutyFromJson(Map<String, dynamic> json) => _$FlightDuty(
      dutyCode: json['dutyCode'] as String,
      start: timestampConverter.fromJson(json['start'] as Timestamp),
      end: timestampConverter.fromJson(json['end'] as Timestamp),
      from: json['from'] as String,
      to: json['to'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FlightDutyToJson(_$FlightDuty instance) =>
    <String, dynamic>{
      'dutyCode': instance.dutyCode,
      'start': timestampConverter.toJson(instance.start),
      'end': timestampConverter.toJson(instance.end),
      'from': instance.from,
      'to': instance.to,
      'runtimeType': instance.$type,
    };

_$GroundEvent _$$GroundEventFromJson(Map<String, dynamic> json) =>
    _$GroundEvent(
      dutyCode: json['dutyCode'] as String,
      start: timestampConverter.fromJson(json['start'] as Timestamp),
      end: timestampConverter.fromJson(json['end'] as Timestamp),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GroundEventToJson(_$GroundEvent instance) =>
    <String, dynamic>{
      'dutyCode': instance.dutyCode,
      'start': timestampConverter.toJson(instance.start),
      'end': timestampConverter.toJson(instance.end),
      'runtimeType': instance.$type,
    };

_$GroundTransport _$$GroundTransportFromJson(Map<String, dynamic> json) =>
    _$GroundTransport(
      dutyCode: json['dutyCode'] as String,
      start: timestampConverter.fromJson(json['start'] as Timestamp),
      end: timestampConverter.fromJson(json['end'] as Timestamp),
      from: json['from'] as String,
      to: json['to'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GroundTransportToJson(_$GroundTransport instance) =>
    <String, dynamic>{
      'dutyCode': instance.dutyCode,
      'start': timestampConverter.toJson(instance.start),
      'end': timestampConverter.toJson(instance.end),
      'from': instance.from,
      'to': instance.to,
      'runtimeType': instance.$type,
    };
