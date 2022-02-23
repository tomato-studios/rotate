import 'package:freezed_annotation/freezed_annotation.dart';

part 'duty.freezed.dart';

@freezed
class Duty with _$Duty {
  const Duty._();

  const factory Duty.off({
    required String dutyCode,
    required DateTime start,
    required DateTime end,
  }) = Off;

  const factory Duty.layover({
    required String dutyCode,
    required DateTime start,
    required DateTime end,
    required String airport,
  }) = Layover;

  const factory Duty.standby({
    required String dutyCode,
    required DateTime start,
    required DateTime end,
  }) = StandbyDuty;

  const factory Duty.reserve({
    required String dutyCode,
    required DateTime start,
    required DateTime end,
  }) = Reserve;

  const factory Duty.flight({
    required String dutyCode,
    required DateTime start,
    required DateTime end,
    required String from,
    required String to,
  }) = FlightDuty;

  const factory Duty.groundEvent({
    required String dutyCode,
    required DateTime start,
    required DateTime end,
  }) = GroundEvent;

  const factory Duty.groundTransport({
    required String dutyCode,
    required DateTime start,
    required DateTime end,
    required String from,
    required String to,
  }) = GroundTransport;
}
