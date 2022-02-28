// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
<<<<<<< HEAD
// ignore_for_file: type=lint
=======
>>>>>>> rotate/project_structure
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _Settings call({required bool showPerformanceOverlay}) {
    return _Settings(
      showPerformanceOverlay: showPerformanceOverlay,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  bool get showPerformanceOverlay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({bool showPerformanceOverlay});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? showPerformanceOverlay = freezed,
  }) {
    return _then(_value.copyWith(
      showPerformanceOverlay: showPerformanceOverlay == freezed
          ? _value.showPerformanceOverlay
          : showPerformanceOverlay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingsCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  @override
  $Res call({bool showPerformanceOverlay});
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object? showPerformanceOverlay = freezed,
  }) {
    return _then(_Settings(
      showPerformanceOverlay: showPerformanceOverlay == freezed
          ? _value.showPerformanceOverlay
          : showPerformanceOverlay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Settings implements _Settings {
  const _$_Settings({required this.showPerformanceOverlay});

  @override
  final bool showPerformanceOverlay;

  @override
  String toString() {
    return 'SettingsState(showPerformanceOverlay: $showPerformanceOverlay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Settings &&
            const DeepCollectionEquality()
                .equals(other.showPerformanceOverlay, showPerformanceOverlay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(showPerformanceOverlay));

  @JsonKey(ignore: true)
  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);
}

abstract class _Settings implements SettingsState {
  const factory _Settings({required bool showPerformanceOverlay}) = _$_Settings;

  @override
  bool get showPerformanceOverlay;
  @override
  @JsonKey(ignore: true)
  _$SettingsCopyWith<_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
