part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial({required ThemeMode mode}) = _Initial;
  const factory ThemeState.loaded({required ThemeMode mode}) = _Loaded;

  static ThemeState watch(BuildContext context) =>
      context.watch<ThemeCubit>().state;
}
