// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'duty_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DutyElement _$DutyElementFromJson(Map<String, dynamic> json) {
  return _DutyElement.fromJson(json);
}

/// @nodoc
class _$DutyElementTearOff {
  const _$DutyElementTearOff();

  _DutyElement call(
      {required String name,
      required String description,
      required String regex_group_id}) {
    return _DutyElement(
      name: name,
      description: description,
      regex_group_id: regex_group_id,
    );
  }

  DutyElement fromJson(Map<String, Object?> json) {
    return DutyElement.fromJson(json);
  }
}

/// @nodoc
const $DutyElement = _$DutyElementTearOff();

/// @nodoc
mixin _$DutyElement {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get regex_group_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DutyElementCopyWith<DutyElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DutyElementCopyWith<$Res> {
  factory $DutyElementCopyWith(
          DutyElement value, $Res Function(DutyElement) then) =
      _$DutyElementCopyWithImpl<$Res>;
  $Res call({String name, String description, String regex_group_id});
}

/// @nodoc
class _$DutyElementCopyWithImpl<$Res> implements $DutyElementCopyWith<$Res> {
  _$DutyElementCopyWithImpl(this._value, this._then);

  final DutyElement _value;
  // ignore: unused_field
  final $Res Function(DutyElement) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? regex_group_id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      regex_group_id: regex_group_id == freezed
          ? _value.regex_group_id
          : regex_group_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DutyElementCopyWith<$Res>
    implements $DutyElementCopyWith<$Res> {
  factory _$DutyElementCopyWith(
          _DutyElement value, $Res Function(_DutyElement) then) =
      __$DutyElementCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description, String regex_group_id});
}

/// @nodoc
class __$DutyElementCopyWithImpl<$Res> extends _$DutyElementCopyWithImpl<$Res>
    implements _$DutyElementCopyWith<$Res> {
  __$DutyElementCopyWithImpl(
      _DutyElement _value, $Res Function(_DutyElement) _then)
      : super(_value, (v) => _then(v as _DutyElement));

  @override
  _DutyElement get _value => super._value as _DutyElement;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? regex_group_id = freezed,
  }) {
    return _then(_DutyElement(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      regex_group_id: regex_group_id == freezed
          ? _value.regex_group_id
          : regex_group_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DutyElement extends _DutyElement {
  const _$_DutyElement(
      {required this.name,
      required this.description,
      required this.regex_group_id})
      : super._();

  factory _$_DutyElement.fromJson(Map<String, dynamic> json) =>
      _$$_DutyElementFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String regex_group_id;

  @override
  String toString() {
    return 'DutyElement(name: $name, description: $description, regex_group_id: $regex_group_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyElement &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.regex_group_id, regex_group_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(regex_group_id));

  @JsonKey(ignore: true)
  @override
  _$DutyElementCopyWith<_DutyElement> get copyWith =>
      __$DutyElementCopyWithImpl<_DutyElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DutyElementToJson(this);
  }
}

abstract class _DutyElement extends DutyElement {
  const factory _DutyElement(
      {required String name,
      required String description,
      required String regex_group_id}) = _$_DutyElement;
  const _DutyElement._() : super._();

  factory _DutyElement.fromJson(Map<String, dynamic> json) =
      _$_DutyElement.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get regex_group_id;
  @override
  @JsonKey(ignore: true)
  _$DutyElementCopyWith<_DutyElement> get copyWith =>
      throw _privateConstructorUsedError;
}
