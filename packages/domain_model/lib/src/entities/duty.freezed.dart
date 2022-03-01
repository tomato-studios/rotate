// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'duty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DutyTearOff {
  const _$DutyTearOff();

  Off off(
      {required String dutyCode,
      required DateTime start,
      required DateTime end}) {
    return Off(
      dutyCode: dutyCode,
      start: start,
      end: end,
    );
  }

  Layover layover(
      {required String dutyCode,
      required DateTime start,
      required DateTime end,
      required String airport}) {
    return Layover(
      dutyCode: dutyCode,
      start: start,
      end: end,
      airport: airport,
    );
  }

  StandbyDuty standby(
      {required String dutyCode,
      required DateTime start,
      required DateTime end}) {
    return StandbyDuty(
      dutyCode: dutyCode,
      start: start,
      end: end,
    );
  }

  Reserve reserve(
      {required String dutyCode,
      required DateTime start,
      required DateTime end}) {
    return Reserve(
      dutyCode: dutyCode,
      start: start,
      end: end,
    );
  }

  FlightDuty flight(
      {required String dutyCode,
      required DateTime start,
      required DateTime end,
      required String from,
      required String to}) {
    return FlightDuty(
      dutyCode: dutyCode,
      start: start,
      end: end,
      from: from,
      to: to,
    );
  }

  GroundEvent groundEvent(
      {required String dutyCode,
      required DateTime start,
      required DateTime end}) {
    return GroundEvent(
      dutyCode: dutyCode,
      start: start,
      end: end,
    );
  }

  GroundTransport groundTransport(
      {required String dutyCode,
      required DateTime start,
      required DateTime end,
      required String from,
      required String to}) {
    return GroundTransport(
      dutyCode: dutyCode,
      start: start,
      end: end,
      from: from,
      to: to,
    );
  }
}

/// @nodoc
const $Duty = _$DutyTearOff();

/// @nodoc
mixin _$Duty {
  String get dutyCode => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        off,
    required TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)
        layover,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        standby,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        reserve,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        flight,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        groundEvent,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        groundTransport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Off value) off,
    required TResult Function(Layover value) layover,
    required TResult Function(StandbyDuty value) standby,
    required TResult Function(Reserve value) reserve,
    required TResult Function(FlightDuty value) flight,
    required TResult Function(GroundEvent value) groundEvent,
    required TResult Function(GroundTransport value) groundTransport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DutyCopyWith<Duty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DutyCopyWith<$Res> {
  factory $DutyCopyWith(Duty value, $Res Function(Duty) then) =
      _$DutyCopyWithImpl<$Res>;
  $Res call({String dutyCode, DateTime start, DateTime end});
}

/// @nodoc
class _$DutyCopyWithImpl<$Res> implements $DutyCopyWith<$Res> {
  _$DutyCopyWithImpl(this._value, this._then);

  final Duty _value;
  // ignore: unused_field
  final $Res Function(Duty) _then;

  @override
  $Res call({
    Object? dutyCode = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      dutyCode: dutyCode == freezed
          ? _value.dutyCode
          : dutyCode // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class $OffCopyWith<$Res> implements $DutyCopyWith<$Res> {
  factory $OffCopyWith(Off value, $Res Function(Off) then) =
      _$OffCopyWithImpl<$Res>;
  @override
  $Res call({String dutyCode, DateTime start, DateTime end});
}

/// @nodoc
class _$OffCopyWithImpl<$Res> extends _$DutyCopyWithImpl<$Res>
    implements $OffCopyWith<$Res> {
  _$OffCopyWithImpl(Off _value, $Res Function(Off) _then)
      : super(_value, (v) => _then(v as Off));

  @override
  Off get _value => super._value as Off;

  @override
  $Res call({
    Object? dutyCode = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(Off(
      dutyCode: dutyCode == freezed
          ? _value.dutyCode
          : dutyCode // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Off extends Off {
  const _$Off({required this.dutyCode, required this.start, required this.end})
      : super._();

  @override
  final String dutyCode;
  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'Duty.off(dutyCode: $dutyCode, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Off &&
            const DeepCollectionEquality().equals(other.dutyCode, dutyCode) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dutyCode),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  $OffCopyWith<Off> get copyWith => _$OffCopyWithImpl<Off>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        off,
    required TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)
        layover,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        standby,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        reserve,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        flight,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        groundEvent,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        groundTransport,
  }) {
    return off(dutyCode, start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
  }) {
    return off?.call(dutyCode, start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off(dutyCode, start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Off value) off,
    required TResult Function(Layover value) layover,
    required TResult Function(StandbyDuty value) standby,
    required TResult Function(Reserve value) reserve,
    required TResult Function(FlightDuty value) flight,
    required TResult Function(GroundEvent value) groundEvent,
    required TResult Function(GroundTransport value) groundTransport,
  }) {
    return off(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
  }) {
    return off?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off(this);
    }
    return orElse();
  }
}

abstract class Off extends Duty {
  const factory Off(
      {required String dutyCode,
      required DateTime start,
      required DateTime end}) = _$Off;
  const Off._() : super._();

  @override
  String get dutyCode;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  $OffCopyWith<Off> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoverCopyWith<$Res> implements $DutyCopyWith<$Res> {
  factory $LayoverCopyWith(Layover value, $Res Function(Layover) then) =
      _$LayoverCopyWithImpl<$Res>;
  @override
  $Res call({String dutyCode, DateTime start, DateTime end, String airport});
}

/// @nodoc
class _$LayoverCopyWithImpl<$Res> extends _$DutyCopyWithImpl<$Res>
    implements $LayoverCopyWith<$Res> {
  _$LayoverCopyWithImpl(Layover _value, $Res Function(Layover) _then)
      : super(_value, (v) => _then(v as Layover));

  @override
  Layover get _value => super._value as Layover;

  @override
  $Res call({
    Object? dutyCode = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? airport = freezed,
  }) {
    return _then(Layover(
      dutyCode: dutyCode == freezed
          ? _value.dutyCode
          : dutyCode // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      airport: airport == freezed
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Layover extends Layover {
  const _$Layover(
      {required this.dutyCode,
      required this.start,
      required this.end,
      required this.airport})
      : super._();

  @override
  final String dutyCode;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final String airport;

  @override
  String toString() {
    return 'Duty.layover(dutyCode: $dutyCode, start: $start, end: $end, airport: $airport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Layover &&
            const DeepCollectionEquality().equals(other.dutyCode, dutyCode) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.airport, airport));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dutyCode),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(airport));

  @JsonKey(ignore: true)
  @override
  $LayoverCopyWith<Layover> get copyWith =>
      _$LayoverCopyWithImpl<Layover>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        off,
    required TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)
        layover,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        standby,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        reserve,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        flight,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        groundEvent,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        groundTransport,
  }) {
    return layover(dutyCode, start, end, airport);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
  }) {
    return layover?.call(dutyCode, start, end, airport);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
    required TResult orElse(),
  }) {
    if (layover != null) {
      return layover(dutyCode, start, end, airport);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Off value) off,
    required TResult Function(Layover value) layover,
    required TResult Function(StandbyDuty value) standby,
    required TResult Function(Reserve value) reserve,
    required TResult Function(FlightDuty value) flight,
    required TResult Function(GroundEvent value) groundEvent,
    required TResult Function(GroundTransport value) groundTransport,
  }) {
    return layover(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
  }) {
    return layover?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
    required TResult orElse(),
  }) {
    if (layover != null) {
      return layover(this);
    }
    return orElse();
  }
}

abstract class Layover extends Duty {
  const factory Layover(
      {required String dutyCode,
      required DateTime start,
      required DateTime end,
      required String airport}) = _$Layover;
  const Layover._() : super._();

  @override
  String get dutyCode;
  @override
  DateTime get start;
  @override
  DateTime get end;
  String get airport;
  @override
  @JsonKey(ignore: true)
  $LayoverCopyWith<Layover> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandbyDutyCopyWith<$Res> implements $DutyCopyWith<$Res> {
  factory $StandbyDutyCopyWith(
          StandbyDuty value, $Res Function(StandbyDuty) then) =
      _$StandbyDutyCopyWithImpl<$Res>;
  @override
  $Res call({String dutyCode, DateTime start, DateTime end});
}

/// @nodoc
class _$StandbyDutyCopyWithImpl<$Res> extends _$DutyCopyWithImpl<$Res>
    implements $StandbyDutyCopyWith<$Res> {
  _$StandbyDutyCopyWithImpl(
      StandbyDuty _value, $Res Function(StandbyDuty) _then)
      : super(_value, (v) => _then(v as StandbyDuty));

  @override
  StandbyDuty get _value => super._value as StandbyDuty;

  @override
  $Res call({
    Object? dutyCode = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(StandbyDuty(
      dutyCode: dutyCode == freezed
          ? _value.dutyCode
          : dutyCode // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$StandbyDuty extends StandbyDuty {
  const _$StandbyDuty(
      {required this.dutyCode, required this.start, required this.end})
      : super._();

  @override
  final String dutyCode;
  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'Duty.standby(dutyCode: $dutyCode, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StandbyDuty &&
            const DeepCollectionEquality().equals(other.dutyCode, dutyCode) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dutyCode),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  $StandbyDutyCopyWith<StandbyDuty> get copyWith =>
      _$StandbyDutyCopyWithImpl<StandbyDuty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        off,
    required TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)
        layover,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        standby,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        reserve,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        flight,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        groundEvent,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        groundTransport,
  }) {
    return standby(dutyCode, start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
  }) {
    return standby?.call(dutyCode, start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
    required TResult orElse(),
  }) {
    if (standby != null) {
      return standby(dutyCode, start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Off value) off,
    required TResult Function(Layover value) layover,
    required TResult Function(StandbyDuty value) standby,
    required TResult Function(Reserve value) reserve,
    required TResult Function(FlightDuty value) flight,
    required TResult Function(GroundEvent value) groundEvent,
    required TResult Function(GroundTransport value) groundTransport,
  }) {
    return standby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
  }) {
    return standby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
    required TResult orElse(),
  }) {
    if (standby != null) {
      return standby(this);
    }
    return orElse();
  }
}

abstract class StandbyDuty extends Duty {
  const factory StandbyDuty(
      {required String dutyCode,
      required DateTime start,
      required DateTime end}) = _$StandbyDuty;
  const StandbyDuty._() : super._();

  @override
  String get dutyCode;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  $StandbyDutyCopyWith<StandbyDuty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReserveCopyWith<$Res> implements $DutyCopyWith<$Res> {
  factory $ReserveCopyWith(Reserve value, $Res Function(Reserve) then) =
      _$ReserveCopyWithImpl<$Res>;
  @override
  $Res call({String dutyCode, DateTime start, DateTime end});
}

/// @nodoc
class _$ReserveCopyWithImpl<$Res> extends _$DutyCopyWithImpl<$Res>
    implements $ReserveCopyWith<$Res> {
  _$ReserveCopyWithImpl(Reserve _value, $Res Function(Reserve) _then)
      : super(_value, (v) => _then(v as Reserve));

  @override
  Reserve get _value => super._value as Reserve;

  @override
  $Res call({
    Object? dutyCode = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(Reserve(
      dutyCode: dutyCode == freezed
          ? _value.dutyCode
          : dutyCode // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Reserve extends Reserve {
  const _$Reserve(
      {required this.dutyCode, required this.start, required this.end})
      : super._();

  @override
  final String dutyCode;
  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'Duty.reserve(dutyCode: $dutyCode, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Reserve &&
            const DeepCollectionEquality().equals(other.dutyCode, dutyCode) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dutyCode),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  $ReserveCopyWith<Reserve> get copyWith =>
      _$ReserveCopyWithImpl<Reserve>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        off,
    required TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)
        layover,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        standby,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        reserve,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        flight,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        groundEvent,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        groundTransport,
  }) {
    return reserve(dutyCode, start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
  }) {
    return reserve?.call(dutyCode, start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
    required TResult orElse(),
  }) {
    if (reserve != null) {
      return reserve(dutyCode, start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Off value) off,
    required TResult Function(Layover value) layover,
    required TResult Function(StandbyDuty value) standby,
    required TResult Function(Reserve value) reserve,
    required TResult Function(FlightDuty value) flight,
    required TResult Function(GroundEvent value) groundEvent,
    required TResult Function(GroundTransport value) groundTransport,
  }) {
    return reserve(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
  }) {
    return reserve?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
    required TResult orElse(),
  }) {
    if (reserve != null) {
      return reserve(this);
    }
    return orElse();
  }
}

abstract class Reserve extends Duty {
  const factory Reserve(
      {required String dutyCode,
      required DateTime start,
      required DateTime end}) = _$Reserve;
  const Reserve._() : super._();

  @override
  String get dutyCode;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  $ReserveCopyWith<Reserve> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightDutyCopyWith<$Res> implements $DutyCopyWith<$Res> {
  factory $FlightDutyCopyWith(
          FlightDuty value, $Res Function(FlightDuty) then) =
      _$FlightDutyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dutyCode, DateTime start, DateTime end, String from, String to});
}

/// @nodoc
class _$FlightDutyCopyWithImpl<$Res> extends _$DutyCopyWithImpl<$Res>
    implements $FlightDutyCopyWith<$Res> {
  _$FlightDutyCopyWithImpl(FlightDuty _value, $Res Function(FlightDuty) _then)
      : super(_value, (v) => _then(v as FlightDuty));

  @override
  FlightDuty get _value => super._value as FlightDuty;

  @override
  $Res call({
    Object? dutyCode = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(FlightDuty(
      dutyCode: dutyCode == freezed
          ? _value.dutyCode
          : dutyCode // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FlightDuty extends FlightDuty {
  const _$FlightDuty(
      {required this.dutyCode,
      required this.start,
      required this.end,
      required this.from,
      required this.to})
      : super._();

  @override
  final String dutyCode;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final String from;
  @override
  final String to;

  @override
  String toString() {
    return 'Duty.flight(dutyCode: $dutyCode, start: $start, end: $end, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FlightDuty &&
            const DeepCollectionEquality().equals(other.dutyCode, dutyCode) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dutyCode),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  $FlightDutyCopyWith<FlightDuty> get copyWith =>
      _$FlightDutyCopyWithImpl<FlightDuty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        off,
    required TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)
        layover,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        standby,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        reserve,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        flight,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        groundEvent,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        groundTransport,
  }) {
    return flight(dutyCode, start, end, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
  }) {
    return flight?.call(dutyCode, start, end, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
    required TResult orElse(),
  }) {
    if (flight != null) {
      return flight(dutyCode, start, end, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Off value) off,
    required TResult Function(Layover value) layover,
    required TResult Function(StandbyDuty value) standby,
    required TResult Function(Reserve value) reserve,
    required TResult Function(FlightDuty value) flight,
    required TResult Function(GroundEvent value) groundEvent,
    required TResult Function(GroundTransport value) groundTransport,
  }) {
    return flight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
  }) {
    return flight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
    required TResult orElse(),
  }) {
    if (flight != null) {
      return flight(this);
    }
    return orElse();
  }
}

abstract class FlightDuty extends Duty {
  const factory FlightDuty(
      {required String dutyCode,
      required DateTime start,
      required DateTime end,
      required String from,
      required String to}) = _$FlightDuty;
  const FlightDuty._() : super._();

  @override
  String get dutyCode;
  @override
  DateTime get start;
  @override
  DateTime get end;
  String get from;
  String get to;
  @override
  @JsonKey(ignore: true)
  $FlightDutyCopyWith<FlightDuty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroundEventCopyWith<$Res> implements $DutyCopyWith<$Res> {
  factory $GroundEventCopyWith(
          GroundEvent value, $Res Function(GroundEvent) then) =
      _$GroundEventCopyWithImpl<$Res>;
  @override
  $Res call({String dutyCode, DateTime start, DateTime end});
}

/// @nodoc
class _$GroundEventCopyWithImpl<$Res> extends _$DutyCopyWithImpl<$Res>
    implements $GroundEventCopyWith<$Res> {
  _$GroundEventCopyWithImpl(
      GroundEvent _value, $Res Function(GroundEvent) _then)
      : super(_value, (v) => _then(v as GroundEvent));

  @override
  GroundEvent get _value => super._value as GroundEvent;

  @override
  $Res call({
    Object? dutyCode = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(GroundEvent(
      dutyCode: dutyCode == freezed
          ? _value.dutyCode
          : dutyCode // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GroundEvent extends GroundEvent {
  const _$GroundEvent(
      {required this.dutyCode, required this.start, required this.end})
      : super._();

  @override
  final String dutyCode;
  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'Duty.groundEvent(dutyCode: $dutyCode, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroundEvent &&
            const DeepCollectionEquality().equals(other.dutyCode, dutyCode) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dutyCode),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  $GroundEventCopyWith<GroundEvent> get copyWith =>
      _$GroundEventCopyWithImpl<GroundEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        off,
    required TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)
        layover,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        standby,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        reserve,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        flight,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        groundEvent,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        groundTransport,
  }) {
    return groundEvent(dutyCode, start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
  }) {
    return groundEvent?.call(dutyCode, start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
    required TResult orElse(),
  }) {
    if (groundEvent != null) {
      return groundEvent(dutyCode, start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Off value) off,
    required TResult Function(Layover value) layover,
    required TResult Function(StandbyDuty value) standby,
    required TResult Function(Reserve value) reserve,
    required TResult Function(FlightDuty value) flight,
    required TResult Function(GroundEvent value) groundEvent,
    required TResult Function(GroundTransport value) groundTransport,
  }) {
    return groundEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
  }) {
    return groundEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
    required TResult orElse(),
  }) {
    if (groundEvent != null) {
      return groundEvent(this);
    }
    return orElse();
  }
}

abstract class GroundEvent extends Duty {
  const factory GroundEvent(
      {required String dutyCode,
      required DateTime start,
      required DateTime end}) = _$GroundEvent;
  const GroundEvent._() : super._();

  @override
  String get dutyCode;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  $GroundEventCopyWith<GroundEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroundTransportCopyWith<$Res> implements $DutyCopyWith<$Res> {
  factory $GroundTransportCopyWith(
          GroundTransport value, $Res Function(GroundTransport) then) =
      _$GroundTransportCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dutyCode, DateTime start, DateTime end, String from, String to});
}

/// @nodoc
class _$GroundTransportCopyWithImpl<$Res> extends _$DutyCopyWithImpl<$Res>
    implements $GroundTransportCopyWith<$Res> {
  _$GroundTransportCopyWithImpl(
      GroundTransport _value, $Res Function(GroundTransport) _then)
      : super(_value, (v) => _then(v as GroundTransport));

  @override
  GroundTransport get _value => super._value as GroundTransport;

  @override
  $Res call({
    Object? dutyCode = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(GroundTransport(
      dutyCode: dutyCode == freezed
          ? _value.dutyCode
          : dutyCode // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GroundTransport extends GroundTransport {
  const _$GroundTransport(
      {required this.dutyCode,
      required this.start,
      required this.end,
      required this.from,
      required this.to})
      : super._();

  @override
  final String dutyCode;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final String from;
  @override
  final String to;

  @override
  String toString() {
    return 'Duty.groundTransport(dutyCode: $dutyCode, start: $start, end: $end, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroundTransport &&
            const DeepCollectionEquality().equals(other.dutyCode, dutyCode) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dutyCode),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  $GroundTransportCopyWith<GroundTransport> get copyWith =>
      _$GroundTransportCopyWithImpl<GroundTransport>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        off,
    required TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)
        layover,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        standby,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        reserve,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        flight,
    required TResult Function(String dutyCode, DateTime start, DateTime end)
        groundEvent,
    required TResult Function(String dutyCode, DateTime start, DateTime end,
            String from, String to)
        groundTransport,
  }) {
    return groundTransport(dutyCode, start, end, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
  }) {
    return groundTransport?.call(dutyCode, start, end, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String dutyCode, DateTime start, DateTime end)? off,
    TResult Function(
            String dutyCode, DateTime start, DateTime end, String airport)?
        layover,
    TResult Function(String dutyCode, DateTime start, DateTime end)? standby,
    TResult Function(String dutyCode, DateTime start, DateTime end)? reserve,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        flight,
    TResult Function(String dutyCode, DateTime start, DateTime end)?
        groundEvent,
    TResult Function(String dutyCode, DateTime start, DateTime end, String from,
            String to)?
        groundTransport,
    required TResult orElse(),
  }) {
    if (groundTransport != null) {
      return groundTransport(dutyCode, start, end, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Off value) off,
    required TResult Function(Layover value) layover,
    required TResult Function(StandbyDuty value) standby,
    required TResult Function(Reserve value) reserve,
    required TResult Function(FlightDuty value) flight,
    required TResult Function(GroundEvent value) groundEvent,
    required TResult Function(GroundTransport value) groundTransport,
  }) {
    return groundTransport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
  }) {
    return groundTransport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Off value)? off,
    TResult Function(Layover value)? layover,
    TResult Function(StandbyDuty value)? standby,
    TResult Function(Reserve value)? reserve,
    TResult Function(FlightDuty value)? flight,
    TResult Function(GroundEvent value)? groundEvent,
    TResult Function(GroundTransport value)? groundTransport,
    required TResult orElse(),
  }) {
    if (groundTransport != null) {
      return groundTransport(this);
    }
    return orElse();
  }
}

abstract class GroundTransport extends Duty {
  const factory GroundTransport(
      {required String dutyCode,
      required DateTime start,
      required DateTime end,
      required String from,
      required String to}) = _$GroundTransport;
  const GroundTransport._() : super._();

  @override
  String get dutyCode;
  @override
  DateTime get start;
  @override
  DateTime get end;
  String get from;
  String get to;
  @override
  @JsonKey(ignore: true)
  $GroundTransportCopyWith<GroundTransport> get copyWith =>
      throw _privateConstructorUsedError;
}
