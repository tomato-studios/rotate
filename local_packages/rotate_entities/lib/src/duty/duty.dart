import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rotate_entities/src/duty/utils/timestamp_converter.dart';
import 'package:sembast/timestamp.dart';

part 'duty.freezed.dart';
part 'duty.g.dart';

@freezed
class Duty with _$Duty {
  const Duty._();

  const factory Duty.off({
    required String dutyCode,
    @timestampConverter required DateTime start,
    @timestampConverter required DateTime end,
  }) = Off;

  const factory Duty.layover({
    required String dutyCode,
    @timestampConverter required DateTime start,
    @timestampConverter required DateTime end,
    required String airport,
  }) = Layover;

  const factory Duty.standby({
    required String dutyCode,
    @timestampConverter required DateTime start,
    @timestampConverter required DateTime end,
  }) = StandbyDuty;

  const factory Duty.reserve({
    required String dutyCode,
    @timestampConverter required DateTime start,
    @timestampConverter required DateTime end,
  }) = Reserve;

  const factory Duty.flight({
    required String dutyCode,
    @timestampConverter required DateTime start,
    @timestampConverter required DateTime end,
    required String from,
    required String to,
  }) = FlightDuty;

  const factory Duty.groundEvent({
    required String dutyCode,
    @timestampConverter required DateTime start,
    @timestampConverter required DateTime end,
  }) = GroundEvent;

  const factory Duty.groundTransport({
    required String dutyCode,
    @timestampConverter required DateTime start,
    @timestampConverter required DateTime end,
    required String from,
    required String to,
  }) = GroundTransport;

  factory Duty.fromJson(Map<String, dynamic> json) => _$DutyFromJson(json);
}
