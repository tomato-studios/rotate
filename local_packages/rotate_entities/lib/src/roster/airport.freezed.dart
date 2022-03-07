// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'airport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Airport _$AirportFromJson(Map<String, dynamic> json) {
  return _Airport.fromJson(json);
}

/// @nodoc
class _$AirportTearOff {
  const _$AirportTearOff();

  _Airport call(
      {required String icaoCode,
      required String iataCode,
      required String name,
      required String city,
      required double latitude,
      required double longitude,
      required double elevation,
      required String type,
      required List<RunwaySet> runways}) {
    return _Airport(
      icaoCode: icaoCode,
      iataCode: iataCode,
      name: name,
      city: city,
      latitude: latitude,
      longitude: longitude,
      elevation: elevation,
      type: type,
      runways: runways,
    );
  }

  Airport fromJson(Map<String, Object?> json) {
    return Airport.fromJson(json);
  }
}

/// @nodoc
const $Airport = _$AirportTearOff();

/// @nodoc
mixin _$Airport {
  String get icaoCode => throw _privateConstructorUsedError;
  String get iataCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get elevation =>
      throw _privateConstructorUsedError; // TODO: use Length class?
  String get type => throw _privateConstructorUsedError;
  List<RunwaySet> get runways => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirportCopyWith<Airport> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportCopyWith<$Res> {
  factory $AirportCopyWith(Airport value, $Res Function(Airport) then) =
      _$AirportCopyWithImpl<$Res>;
  $Res call(
      {String icaoCode,
      String iataCode,
      String name,
      String city,
      double latitude,
      double longitude,
      double elevation,
      String type,
      List<RunwaySet> runways});
}

/// @nodoc
class _$AirportCopyWithImpl<$Res> implements $AirportCopyWith<$Res> {
  _$AirportCopyWithImpl(this._value, this._then);

  final Airport _value;
  // ignore: unused_field
  final $Res Function(Airport) _then;

  @override
  $Res call({
    Object? icaoCode = freezed,
    Object? iataCode = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? elevation = freezed,
    Object? type = freezed,
    Object? runways = freezed,
  }) {
    return _then(_value.copyWith(
      icaoCode: icaoCode == freezed
          ? _value.icaoCode
          : icaoCode // ignore: cast_nullable_to_non_nullable
              as String,
      iataCode: iataCode == freezed
          ? _value.iataCode
          : iataCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      elevation: elevation == freezed
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      runways: runways == freezed
          ? _value.runways
          : runways // ignore: cast_nullable_to_non_nullable
              as List<RunwaySet>,
    ));
  }
}

/// @nodoc
abstract class _$AirportCopyWith<$Res> implements $AirportCopyWith<$Res> {
  factory _$AirportCopyWith(_Airport value, $Res Function(_Airport) then) =
      __$AirportCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icaoCode,
      String iataCode,
      String name,
      String city,
      double latitude,
      double longitude,
      double elevation,
      String type,
      List<RunwaySet> runways});
}

/// @nodoc
class __$AirportCopyWithImpl<$Res> extends _$AirportCopyWithImpl<$Res>
    implements _$AirportCopyWith<$Res> {
  __$AirportCopyWithImpl(_Airport _value, $Res Function(_Airport) _then)
      : super(_value, (v) => _then(v as _Airport));

  @override
  _Airport get _value => super._value as _Airport;

  @override
  $Res call({
    Object? icaoCode = freezed,
    Object? iataCode = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? elevation = freezed,
    Object? type = freezed,
    Object? runways = freezed,
  }) {
    return _then(_Airport(
      icaoCode: icaoCode == freezed
          ? _value.icaoCode
          : icaoCode // ignore: cast_nullable_to_non_nullable
              as String,
      iataCode: iataCode == freezed
          ? _value.iataCode
          : iataCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      elevation: elevation == freezed
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      runways: runways == freezed
          ? _value.runways
          : runways // ignore: cast_nullable_to_non_nullable
              as List<RunwaySet>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Airport extends _Airport {
  const _$_Airport(
      {required this.icaoCode,
      required this.iataCode,
      required this.name,
      required this.city,
      required this.latitude,
      required this.longitude,
      required this.elevation,
      required this.type,
      required this.runways})
      : super._();

  factory _$_Airport.fromJson(Map<String, dynamic> json) =>
      _$$_AirportFromJson(json);

  @override
  final String icaoCode;
  @override
  final String iataCode;
  @override
  final String name;
  @override
  final String city;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double elevation;
  @override // TODO: use Length class?
  final String type;
  @override
  final List<RunwaySet> runways;

  @override
  String toString() {
    return 'Airport(icaoCode: $icaoCode, iataCode: $iataCode, name: $name, city: $city, latitude: $latitude, longitude: $longitude, elevation: $elevation, type: $type, runways: $runways)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Airport &&
            const DeepCollectionEquality().equals(other.icaoCode, icaoCode) &&
            const DeepCollectionEquality().equals(other.iataCode, iataCode) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.elevation, elevation) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.runways, runways));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icaoCode),
      const DeepCollectionEquality().hash(iataCode),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(elevation),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(runways));

  @JsonKey(ignore: true)
  @override
  _$AirportCopyWith<_Airport> get copyWith =>
      __$AirportCopyWithImpl<_Airport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirportToJson(this);
  }
}

abstract class _Airport extends Airport {
  const factory _Airport(
      {required String icaoCode,
      required String iataCode,
      required String name,
      required String city,
      required double latitude,
      required double longitude,
      required double elevation,
      required String type,
      required List<RunwaySet> runways}) = _$_Airport;
  const _Airport._() : super._();

  factory _Airport.fromJson(Map<String, dynamic> json) = _$_Airport.fromJson;

  @override
  String get icaoCode;
  @override
  String get iataCode;
  @override
  String get name;
  @override
  String get city;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get elevation;
  @override // TODO: use Length class?
  String get type;
  @override
  List<RunwaySet> get runways;
  @override
  @JsonKey(ignore: true)
  _$AirportCopyWith<_Airport> get copyWith =>
      throw _privateConstructorUsedError;
}
