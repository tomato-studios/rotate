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

  _ParserInfo call(
      {required String source,
      required Map<String, String> regex_strings,
      required Map<String, String> time_formats}) {
    return _ParserInfo(
      source: source,
      regex_strings: regex_strings,
      time_formats: time_formats,
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
  String get source => throw _privateConstructorUsedError;
  Map<String, String> get regex_strings => throw _privateConstructorUsedError;
  Map<String, String> get time_formats => throw _privateConstructorUsedError;

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
  $Res call(
      {String source,
      Map<String, String> regex_strings,
      Map<String, String> time_formats});
}

/// @nodoc
class _$ParserInfoCopyWithImpl<$Res> implements $ParserInfoCopyWith<$Res> {
  _$ParserInfoCopyWithImpl(this._value, this._then);

  final ParserInfo _value;
  // ignore: unused_field
  final $Res Function(ParserInfo) _then;

  @override
  $Res call({
    Object? source = freezed,
    Object? regex_strings = freezed,
    Object? time_formats = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      regex_strings: regex_strings == freezed
          ? _value.regex_strings
          : regex_strings // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      time_formats: time_formats == freezed
          ? _value.time_formats
          : time_formats // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$ParserInfoCopyWith<$Res> implements $ParserInfoCopyWith<$Res> {
  factory _$ParserInfoCopyWith(
          _ParserInfo value, $Res Function(_ParserInfo) then) =
      __$ParserInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String source,
      Map<String, String> regex_strings,
      Map<String, String> time_formats});
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
    Object? source = freezed,
    Object? regex_strings = freezed,
    Object? time_formats = freezed,
  }) {
    return _then(_ParserInfo(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      regex_strings: regex_strings == freezed
          ? _value.regex_strings
          : regex_strings // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      time_formats: time_formats == freezed
          ? _value.time_formats
          : time_formats // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParserInfo extends _ParserInfo {
  const _$_ParserInfo(
      {required this.source,
      required this.regex_strings,
      required this.time_formats})
      : super._();

  factory _$_ParserInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ParserInfoFromJson(json);

  @override
  final String source;
  @override
  final Map<String, String> regex_strings;
  @override
  final Map<String, String> time_formats;

  @override
  String toString() {
    return 'ParserInfo(source: $source, regex_strings: $regex_strings, time_formats: $time_formats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParserInfo &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.regex_strings, regex_strings) &&
            const DeepCollectionEquality()
                .equals(other.time_formats, time_formats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(regex_strings),
      const DeepCollectionEquality().hash(time_formats));

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
  const factory _ParserInfo(
      {required String source,
      required Map<String, String> regex_strings,
      required Map<String, String> time_formats}) = _$_ParserInfo;
  const _ParserInfo._() : super._();

  factory _ParserInfo.fromJson(Map<String, dynamic> json) =
      _$_ParserInfo.fromJson;

  @override
  String get source;
  @override
  Map<String, String> get regex_strings;
  @override
  Map<String, String> get time_formats;
  @override
  @JsonKey(ignore: true)
  _$ParserInfoCopyWith<_ParserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
