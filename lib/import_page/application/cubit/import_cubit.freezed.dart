// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'import_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImportStateTearOff {
  const _$ImportStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  Importing importing({required File file}) {
    return Importing(
      file: file,
    );
  }

  ImportSuccess success(
      {required File file, required int numberOfImportedRecords}) {
    return ImportSuccess(
      file: file,
      numberOfImportedRecords: numberOfImportedRecords,
    );
  }

  ImportFailure failure({required File file, required String failureMessage}) {
    return ImportFailure(
      file: file,
      failureMessage: failureMessage,
    );
  }
}

/// @nodoc
const $ImportState = _$ImportStateTearOff();

/// @nodoc
mixin _$ImportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File file) importing,
    required TResult Function(File file, int numberOfImportedRecords) success,
    required TResult Function(File file, String failureMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? importing,
    TResult Function(File file, int numberOfImportedRecords)? success,
    TResult Function(File file, String failureMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? importing,
    TResult Function(File file, int numberOfImportedRecords)? success,
    TResult Function(File file, String failureMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Importing value) importing,
    required TResult Function(ImportSuccess value) success,
    required TResult Function(ImportFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Importing value)? importing,
    TResult Function(ImportSuccess value)? success,
    TResult Function(ImportFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Importing value)? importing,
    TResult Function(ImportSuccess value)? success,
    TResult Function(ImportFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportStateCopyWith<$Res> {
  factory $ImportStateCopyWith(
          ImportState value, $Res Function(ImportState) then) =
      _$ImportStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImportStateCopyWithImpl<$Res> implements $ImportStateCopyWith<$Res> {
  _$ImportStateCopyWithImpl(this._value, this._then);

  final ImportState _value;
  // ignore: unused_field
  final $Res Function(ImportState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ImportStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ImportState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File file) importing,
    required TResult Function(File file, int numberOfImportedRecords) success,
    required TResult Function(File file, String failureMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? importing,
    TResult Function(File file, int numberOfImportedRecords)? success,
    TResult Function(File file, String failureMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? importing,
    TResult Function(File file, int numberOfImportedRecords)? success,
    TResult Function(File file, String failureMessage)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Importing value) importing,
    required TResult Function(ImportSuccess value) success,
    required TResult Function(ImportFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Importing value)? importing,
    TResult Function(ImportSuccess value)? success,
    TResult Function(ImportFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Importing value)? importing,
    TResult Function(ImportSuccess value)? success,
    TResult Function(ImportFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ImportState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $ImportingCopyWith<$Res> {
  factory $ImportingCopyWith(Importing value, $Res Function(Importing) then) =
      _$ImportingCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class _$ImportingCopyWithImpl<$Res> extends _$ImportStateCopyWithImpl<$Res>
    implements $ImportingCopyWith<$Res> {
  _$ImportingCopyWithImpl(Importing _value, $Res Function(Importing) _then)
      : super(_value, (v) => _then(v as Importing));

  @override
  Importing get _value => super._value as Importing;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(Importing(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$Importing implements Importing {
  const _$Importing({required this.file});

  @override
  final File file;

  @override
  String toString() {
    return 'ImportState.importing(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Importing &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  $ImportingCopyWith<Importing> get copyWith =>
      _$ImportingCopyWithImpl<Importing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File file) importing,
    required TResult Function(File file, int numberOfImportedRecords) success,
    required TResult Function(File file, String failureMessage) failure,
  }) {
    return importing(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? importing,
    TResult Function(File file, int numberOfImportedRecords)? success,
    TResult Function(File file, String failureMessage)? failure,
  }) {
    return importing?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? importing,
    TResult Function(File file, int numberOfImportedRecords)? success,
    TResult Function(File file, String failureMessage)? failure,
    required TResult orElse(),
  }) {
    if (importing != null) {
      return importing(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Importing value) importing,
    required TResult Function(ImportSuccess value) success,
    required TResult Function(ImportFailure value) failure,
  }) {
    return importing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Importing value)? importing,
    TResult Function(ImportSuccess value)? success,
    TResult Function(ImportFailure value)? failure,
  }) {
    return importing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Importing value)? importing,
    TResult Function(ImportSuccess value)? success,
    TResult Function(ImportFailure value)? failure,
    required TResult orElse(),
  }) {
    if (importing != null) {
      return importing(this);
    }
    return orElse();
  }
}

abstract class Importing implements ImportState {
  const factory Importing({required File file}) = _$Importing;

  File get file;
  @JsonKey(ignore: true)
  $ImportingCopyWith<Importing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportSuccessCopyWith<$Res> {
  factory $ImportSuccessCopyWith(
          ImportSuccess value, $Res Function(ImportSuccess) then) =
      _$ImportSuccessCopyWithImpl<$Res>;
  $Res call({File file, int numberOfImportedRecords});
}

/// @nodoc
class _$ImportSuccessCopyWithImpl<$Res> extends _$ImportStateCopyWithImpl<$Res>
    implements $ImportSuccessCopyWith<$Res> {
  _$ImportSuccessCopyWithImpl(
      ImportSuccess _value, $Res Function(ImportSuccess) _then)
      : super(_value, (v) => _then(v as ImportSuccess));

  @override
  ImportSuccess get _value => super._value as ImportSuccess;

  @override
  $Res call({
    Object? file = freezed,
    Object? numberOfImportedRecords = freezed,
  }) {
    return _then(ImportSuccess(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      numberOfImportedRecords: numberOfImportedRecords == freezed
          ? _value.numberOfImportedRecords
          : numberOfImportedRecords // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ImportSuccess implements ImportSuccess {
  const _$ImportSuccess(
      {required this.file, required this.numberOfImportedRecords});

  @override
  final File file;
  @override
  final int numberOfImportedRecords;

  @override
  String toString() {
    return 'ImportState.success(file: $file, numberOfImportedRecords: $numberOfImportedRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImportSuccess &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(
                other.numberOfImportedRecords, numberOfImportedRecords));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(numberOfImportedRecords));

  @JsonKey(ignore: true)
  @override
  $ImportSuccessCopyWith<ImportSuccess> get copyWith =>
      _$ImportSuccessCopyWithImpl<ImportSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File file) importing,
    required TResult Function(File file, int numberOfImportedRecords) success,
    required TResult Function(File file, String failureMessage) failure,
  }) {
    return success(file, numberOfImportedRecords);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? importing,
    TResult Function(File file, int numberOfImportedRecords)? success,
    TResult Function(File file, String failureMessage)? failure,
  }) {
    return success?.call(file, numberOfImportedRecords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? importing,
    TResult Function(File file, int numberOfImportedRecords)? success,
    TResult Function(File file, String failureMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(file, numberOfImportedRecords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Importing value) importing,
    required TResult Function(ImportSuccess value) success,
    required TResult Function(ImportFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Importing value)? importing,
    TResult Function(ImportSuccess value)? success,
    TResult Function(ImportFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Importing value)? importing,
    TResult Function(ImportSuccess value)? success,
    TResult Function(ImportFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ImportSuccess implements ImportState {
  const factory ImportSuccess(
      {required File file,
      required int numberOfImportedRecords}) = _$ImportSuccess;

  File get file;
  int get numberOfImportedRecords;
  @JsonKey(ignore: true)
  $ImportSuccessCopyWith<ImportSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportFailureCopyWith<$Res> {
  factory $ImportFailureCopyWith(
          ImportFailure value, $Res Function(ImportFailure) then) =
      _$ImportFailureCopyWithImpl<$Res>;
  $Res call({File file, String failureMessage});
}

/// @nodoc
class _$ImportFailureCopyWithImpl<$Res> extends _$ImportStateCopyWithImpl<$Res>
    implements $ImportFailureCopyWith<$Res> {
  _$ImportFailureCopyWithImpl(
      ImportFailure _value, $Res Function(ImportFailure) _then)
      : super(_value, (v) => _then(v as ImportFailure));

  @override
  ImportFailure get _value => super._value as ImportFailure;

  @override
  $Res call({
    Object? file = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(ImportFailure(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImportFailure implements ImportFailure {
  const _$ImportFailure({required this.file, required this.failureMessage});

  @override
  final File file;
  @override
  final String failureMessage;

  @override
  String toString() {
    return 'ImportState.failure(file: $file, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImportFailure &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality()
                .equals(other.failureMessage, failureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(failureMessage));

  @JsonKey(ignore: true)
  @override
  $ImportFailureCopyWith<ImportFailure> get copyWith =>
      _$ImportFailureCopyWithImpl<ImportFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File file) importing,
    required TResult Function(File file, int numberOfImportedRecords) success,
    required TResult Function(File file, String failureMessage) failure,
  }) {
    return failure(file, failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? importing,
    TResult Function(File file, int numberOfImportedRecords)? success,
    TResult Function(File file, String failureMessage)? failure,
  }) {
    return failure?.call(file, failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? importing,
    TResult Function(File file, int numberOfImportedRecords)? success,
    TResult Function(File file, String failureMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(file, failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Importing value) importing,
    required TResult Function(ImportSuccess value) success,
    required TResult Function(ImportFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Importing value)? importing,
    TResult Function(ImportSuccess value)? success,
    TResult Function(ImportFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Importing value)? importing,
    TResult Function(ImportSuccess value)? success,
    TResult Function(ImportFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ImportFailure implements ImportState {
  const factory ImportFailure(
      {required File file, required String failureMessage}) = _$ImportFailure;

  File get file;
  String get failureMessage;
  @JsonKey(ignore: true)
  $ImportFailureCopyWith<ImportFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
