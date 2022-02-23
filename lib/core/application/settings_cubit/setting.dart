import 'package:rotate/shared/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting<T> {
  final SharedPreferences prefs;
  final String key;
  final T defaultValue;
  final Function(T) onChangeCallback;

  Setting({
    required this.prefs,
    required this.key,
    required this.defaultValue,
    required this.onChangeCallback,
  });

  T get value => _fetch();

  set value(T value) {
    logger.i('Changing $key from ${_fetch()} to $value');
    _store(value);
    onChangeCallback(value);
  }

  void toggle() {
    if (T == bool) {
      value = !(value as bool) as T;
    }
  }

  void _store(T value) {
    if (T == bool) {
      prefs.setBool(key, value as bool);
    }
    if (T == int) {
      prefs.setInt(key, value as int);
    }
    if (T == double) {
      prefs.setDouble(key, value as double);
    }
    if (T == String) {
      prefs.setString(key, value as String);
    }
  }

  T _fetch() {
    if (T == bool) {
      return prefs.getBool(key) as T? ?? defaultValue;
    }
    if (T == int) {
      return prefs.getInt(key) as T? ?? defaultValue;
    }
    if (T == double) {
      return prefs.getDouble(key) as T? ?? defaultValue;
    }
    if (T == String) {
      return prefs.getString(key) as T? ?? defaultValue;
    }
    throw UnimplementedError('class $T not supported by fetch setting method');
  }
}
