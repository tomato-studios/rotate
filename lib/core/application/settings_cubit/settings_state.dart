part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool showPerformanceOverlay,
  }) = _Settings;

  factory SettingsState.uninitialized() => const SettingsState(
        showPerformanceOverlay: false,
      );

  ///_ This static method additionaly allows to use watch on the state with the
  /// syntax `SettingsCubit.watch(context)....` instead of `context.watch<SettingsCubit>().state`
  /// or using a `BlocBuilder`.
  static SettingsState watch(BuildContext context) =>
      context.watch<SettingsCubit>().state;
}
