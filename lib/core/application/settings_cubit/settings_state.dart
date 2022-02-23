part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool showPerformanceOverlay,
  }) = _Settings;

  factory SettingsState.uninitialized() => const SettingsState(
        showPerformanceOverlay: false,
      );

  static SettingsState watch(BuildContext context) =>
      context.watch<SettingsCubit>().state;
}
