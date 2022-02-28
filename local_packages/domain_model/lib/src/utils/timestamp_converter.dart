import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/timestamp.dart';

// Converting DateTime attributes to Timestamp attributes is necessary to
// get the Sembast database support.

const timestampConverter = TimestampConverter();

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDateTime();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDateTime(date);
}
