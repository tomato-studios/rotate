// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'duty_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DutyCode _$DutyCodeFromJson(Map<String, dynamic> json) {
  return _DutyCode.fromJson(json);
}

/// @nodoc
class _$DutyCodeTearOff {
  const _$DutyCodeTearOff();

  _DutyCode call({required String id, required String name}) {
    return _DutyCode(
      id: id,
      name: name,
    );
  }

  DutyCode fromJson(Map<String, Object?> json) {
    return DutyCode.fromJson(json);
  }
}

/// @nodoc
const $DutyCode = _$DutyCodeTearOff();

/// @nodoc
mixin _$DutyCode {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DutyCodeCopyWith<DutyCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DutyCodeCopyWith<$Res> {
  factory $DutyCodeCopyWith(DutyCode value, $Res Function(DutyCode) then) =
      _$DutyCodeCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$DutyCodeCopyWithImpl<$Res> implements $DutyCodeCopyWith<$Res> {
  _$DutyCodeCopyWithImpl(this._value, this._then);

  final DutyCode _value;
  // ignore: unused_field
  final $Res Function(DutyCode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DutyCodeCopyWith<$Res> implements $DutyCodeCopyWith<$Res> {
  factory _$DutyCodeCopyWith(_DutyCode value, $Res Function(_DutyCode) then) =
      __$DutyCodeCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$DutyCodeCopyWithImpl<$Res> extends _$DutyCodeCopyWithImpl<$Res>
    implements _$DutyCodeCopyWith<$Res> {
  __$DutyCodeCopyWithImpl(_DutyCode _value, $Res Function(_DutyCode) _then)
      : super(_value, (v) => _then(v as _DutyCode));

  @override
  _DutyCode get _value => super._value as _DutyCode;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_DutyCode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DutyCode extends _DutyCode {
  const _$_DutyCode({required this.id, required this.name}) : super._();

  factory _$_DutyCode.fromJson(Map<String, dynamic> json) =>
      _$$_DutyCodeFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'DutyCode(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyCode &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$DutyCodeCopyWith<_DutyCode> get copyWith =>
      __$DutyCodeCopyWithImpl<_DutyCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DutyCodeToJson(this);
  }
}

abstract class _DutyCode extends DutyCode {
  const factory _DutyCode({required String id, required String name}) =
      _$_DutyCode;
  const _DutyCode._() : super._();

  factory _DutyCode.fromJson(Map<String, dynamic> json) = _$_DutyCode.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$DutyCodeCopyWith<_DutyCode> get copyWith =>
      throw _privateConstructorUsedError;
}
