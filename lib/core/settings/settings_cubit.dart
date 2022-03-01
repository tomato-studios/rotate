import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:rotate/core/settings/setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

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
