import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:rotate/core/application/settings_cubit/setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

///_ Global and persistent user app settings are managed by this cubit.
/// The settings are stored in the [SharedPreferences]. Inside the cubit a
/// setting is saved as a [Setting] object. It can be changed by calling either
/// e.g.:
/// `SettingsCubit.of(context).showPerformanceOverlay.value = true` or
/// `SettingsCubit.of(context).showPerformanceOverlay.toggle()` (for bool only)
/// When it a setting value changes, the change is automatically saved in the
/// [SharedPreferences].
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsState.uninitialized()) {
    GetIt.I.registerSingleton<SettingsCubit>(this);
  }

  late SharedPreferences _prefs;

  late final showPerformanceOverlay = Setting<bool>(
    prefs: _prefs,
    key: 'show_performance_overlay',
    defaultValue: false,
    onChangeCallback: (value) =>
        emit(state.copyWith(showPerformanceOverlay: value)),
  );

  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();

    emit(
      SettingsState(
        showPerformanceOverlay: showPerformanceOverlay.value,
      ),
    );
  }

  static SettingsCubit of(BuildContext context) =>
      BlocProvider.of<SettingsCubit>(context);
}
