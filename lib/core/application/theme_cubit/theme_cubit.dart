import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rotate/shared/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_cubit.freezed.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.initial(mode: defaultThemeMode));

  static const _kThemeMode = 'theme_mode';
  static const defaultThemeMode = ThemeMode.dark;

  Future<void> initialize() async {
    logger.i('initializing theme cubit');
    final prefs = await SharedPreferences.getInstance();
    final modeString = prefs.getString(_kThemeMode);

    if (modeString == ThemeMode.light.toString()) {
      emit(const ThemeState.loaded(mode: ThemeMode.light));
    } else if (modeString == ThemeMode.dark.toString()) {
      emit(const ThemeState.loaded(mode: ThemeMode.dark));
    } else if (modeString == ThemeMode.system.toString()) {
      emit(const ThemeState.loaded(mode: ThemeMode.system));
    } else {
      emit(const ThemeState.loaded(mode: defaultThemeMode));
    }
    logger.i('${state.mode} theme loaded');
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    emit(ThemeState.loaded(mode: mode));
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_kThemeMode, mode.toString());
    logger.i('theme changed to ${state.mode}');
  }

  Future<void> nextThemeMode() async {
    if (state.mode == ThemeMode.dark) {
      setThemeMode(ThemeMode.light);
      return;
    }
    if (state.mode == ThemeMode.light) {
      setThemeMode(ThemeMode.system);
      return;
    }
    if (state.mode == ThemeMode.system) {
      setThemeMode(ThemeMode.dark);
      return;
    }
  }

  static ThemeCubit of(BuildContext context) =>
      BlocProvider.of<ThemeCubit>(context);
}
