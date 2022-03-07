// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parser_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParserInfo _$ParserInfoFromJson(Map<String, dynamic> json) {
  return _ParserInfo.fromJson(json);
}

/// @nodoc
class _$ParserInfoTearOff {
  const _$ParserInfoTearOff();

  _ParserInfo call({required String id, required String name}) {
    return _ParserInfo(
      id: id,
      name: name,
    );
  }

  ParserInfo fromJson(Map<String, Object?> json) {
    return ParserInfo.fromJson(json);
  }
}

/// @nodoc
const $ParserInfo = _$ParserInfoTearOff();

/// @nodoc
mixin _$ParserInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParserInfoCopyWith<ParserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParserInfoCopyWith<$Res> {
  factory $ParserInfoCopyWith(
          ParserInfo value, $Res Function(ParserInfo) then) =
      _$ParserInfoCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$ParserInfoCopyWithImpl<$Res> implements $ParserInfoCopyWith<$Res> {
  _$ParserInfoCopyWithImpl(this._value, this._then);

  final ParserInfo _value;
  // ignore: unused_field
  final $Res Function(ParserInfo) _then;

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
abstract class _$ParserInfoCopyWith<$Res> implements $ParserInfoCopyWith<$Res> {
  factory _$ParserInfoCopyWith(
          _ParserInfo value, $Res Function(_ParserInfo) then) =
      __$ParserInfoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$ParserInfoCopyWithImpl<$Res> extends _$ParserInfoCopyWithImpl<$Res>
    implements _$ParserInfoCopyWith<$Res> {
  __$ParserInfoCopyWithImpl(
      _ParserInfo _value, $Res Function(_ParserInfo) _then)
      : super(_value, (v) => _then(v as _ParserInfo));

  @override
  _ParserInfo get _value => super._value as _ParserInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_ParserInfo(
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
class _$_ParserInfo extends _ParserInfo {
  const _$_ParserInfo({required this.id, required this.name}) : super._();

  factory _$_ParserInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ParserInfoFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ParserInfo(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParserInfo &&
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
  _$ParserInfoCopyWith<_ParserInfo> get copyWith =>
      __$ParserInfoCopyWithImpl<_ParserInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParserInfoToJson(this);
  }
}

abstract class _ParserInfo extends ParserInfo {
  const factory _ParserInfo({required String id, required String name}) =
      _$_ParserInfo;
  const _ParserInfo._() : super._();

  factory _ParserInfo.fromJson(Map<String, dynamic> json) =
      _$_ParserInfo.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ParserInfoCopyWith<_ParserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
