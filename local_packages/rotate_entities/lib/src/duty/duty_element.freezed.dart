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

  _DutyElement call({required String id, required String name}) {
    return _DutyElement(
      id: id,
      name: name,
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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

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
  $Res call({String id, String name});
}

/// @nodoc
class _$DutyElementCopyWithImpl<$Res> implements $DutyElementCopyWith<$Res> {
  _$DutyElementCopyWithImpl(this._value, this._then);

  final DutyElement _value;
  // ignore: unused_field
  final $Res Function(DutyElement) _then;

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
abstract class _$DutyElementCopyWith<$Res>
    implements $DutyElementCopyWith<$Res> {
  factory _$DutyElementCopyWith(
          _DutyElement value, $Res Function(_DutyElement) then) =
      __$DutyElementCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
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
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_DutyElement(
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
class _$_DutyElement extends _DutyElement {
  const _$_DutyElement({required this.id, required this.name}) : super._();

  factory _$_DutyElement.fromJson(Map<String, dynamic> json) =>
      _$$_DutyElementFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'DutyElement(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DutyElement &&
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
  _$DutyElementCopyWith<_DutyElement> get copyWith =>
      __$DutyElementCopyWithImpl<_DutyElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DutyElementToJson(this);
  }
}

abstract class _DutyElement extends DutyElement {
  const factory _DutyElement({required String id, required String name}) =
      _$_DutyElement;
  const _DutyElement._() : super._();

  factory _DutyElement.fromJson(Map<String, dynamic> json) =
      _$_DutyElement.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$DutyElementCopyWith<_DutyElement> get copyWith =>
      throw _privateConstructorUsedError;
}
