// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'roster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RosterTearOff {
  const _$RosterTearOff();

  _Roster call(
      {required DateTime startDate,
      required DateTime endDate,
      required String userName,
      required String pkNumber,
      required List<Duty> dutyList}) {
    return _Roster(
      startDate: startDate,
      endDate: endDate,
      userName: userName,
      pkNumber: pkNumber,
      dutyList: dutyList,
    );
  }
}

/// @nodoc
const $Roster = _$RosterTearOff();

/// @nodoc
mixin _$Roster {
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get pkNumber => throw _privateConstructorUsedError;
  List<Duty> get dutyList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RosterCopyWith<Roster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RosterCopyWith<$Res> {
  factory $RosterCopyWith(Roster value, $Res Function(Roster) then) =
      _$RosterCopyWithImpl<$Res>;
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      String userName,
      String pkNumber,
      List<Duty> dutyList});
}

/// @nodoc
class _$RosterCopyWithImpl<$Res> implements $RosterCopyWith<$Res> {
  _$RosterCopyWithImpl(this._value, this._then);

  final Roster _value;
  // ignore: unused_field
  final $Res Function(Roster) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? userName = freezed,
    Object? pkNumber = freezed,
    Object? dutyList = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      pkNumber: pkNumber == freezed
          ? _value.pkNumber
          : pkNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dutyList: dutyList == freezed
          ? _value.dutyList
          : dutyList // ignore: cast_nullable_to_non_nullable
              as List<Duty>,
    ));
  }
}

/// @nodoc
abstract class _$RosterCopyWith<$Res> implements $RosterCopyWith<$Res> {
  factory _$RosterCopyWith(_Roster value, $Res Function(_Roster) then) =
      __$RosterCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      String userName,
      String pkNumber,
      List<Duty> dutyList});
}

/// @nodoc
class __$RosterCopyWithImpl<$Res> extends _$RosterCopyWithImpl<$Res>
    implements _$RosterCopyWith<$Res> {
  __$RosterCopyWithImpl(_Roster _value, $Res Function(_Roster) _then)
      : super(_value, (v) => _then(v as _Roster));

  @override
  _Roster get _value => super._value as _Roster;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? userName = freezed,
    Object? pkNumber = freezed,
    Object? dutyList = freezed,
  }) {
    return _then(_Roster(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      pkNumber: pkNumber == freezed
          ? _value.pkNumber
          : pkNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dutyList: dutyList == freezed
          ? _value.dutyList
          : dutyList // ignore: cast_nullable_to_non_nullable
              as List<Duty>,
    ));
  }
}

/// @nodoc

class _$_Roster extends _Roster {
  const _$_Roster(
      {required this.startDate,
      required this.endDate,
      required this.userName,
      required this.pkNumber,
      required this.dutyList})
      : super._();

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String userName;
  @override
  final String pkNumber;
  @override
  final List<Duty> dutyList;

  @override
  String toString() {
    return 'Roster(startDate: $startDate, endDate: $endDate, userName: $userName, pkNumber: $pkNumber, dutyList: $dutyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Roster &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.pkNumber, pkNumber) &&
            const DeepCollectionEquality().equals(other.dutyList, dutyList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(pkNumber),
      const DeepCollectionEquality().hash(dutyList));

  @JsonKey(ignore: true)
  @override
  _$RosterCopyWith<_Roster> get copyWith =>
      __$RosterCopyWithImpl<_Roster>(this, _$identity);
}

abstract class _Roster extends Roster {
  const factory _Roster(
      {required DateTime startDate,
      required DateTime endDate,
      required String userName,
      required String pkNumber,
      required List<Duty> dutyList}) = _$_Roster;
  const _Roster._() : super._();

  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get userName;
  @override
  String get pkNumber;
  @override
  List<Duty> get dutyList;
  @override
  @JsonKey(ignore: true)
  _$RosterCopyWith<_Roster> get copyWith => throw _privateConstructorUsedError;
}
