import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theming/src/themes/theme_config.dart';
import 'package:theming/src/utils/color_extension.dart';

ThemeData get lightTheme => _theme(Brightness.light);
ThemeData get darkTheme => _theme(Brightness.dark);

ThemeData _theme(Brightness brightness) {
  final defaultTheme = ThemeData(
    colorSchemeSeed: Colors.teal,
    brightness: brightness,
  );

  final colorScheme = ColorScheme.fromSwatch(
    brightness: brightness,
    primarySwatch: primarySwatch,
    backgroundColor: defaultTheme.canvasColor,
  );

  final headerTextTheme = ThemeData(
    fontFamily: 'LexendDeca',
    brightness: brightness,
  ).textTheme;

  final textTheme = TextTheme(
    bodyText1: const TextTheme().bodyText1,
    bodyText2: const TextTheme().bodyText2,
    headline1: headerTextTheme.headline1,
    headline2: headerTextTheme.headline2,
    headline3: headerTextTheme.headline3,
    headline4: headerTextTheme.headline4,
    headline5: headerTextTheme.headline5,
    headline6: headerTextTheme.headline6,
    button: headerTextTheme.button,
    caption: const TextTheme().caption,
    overline: const TextTheme().overline,
    subtitle1: const TextTheme().subtitle1,
    subtitle2: const TextTheme().subtitle2,
  );

  var theme = ThemeData.from(
    colorScheme: colorScheme,
    textTheme: textTheme,
  );

  //* DARK THEME ADJUSTMENTS
  if (brightness == Brightness.dark) {
    theme = theme.copyWith(
      //* APP BAR
      appBarTheme: AppBarTheme(
        color: theme.colorScheme.background,
        foregroundColor: theme.colorScheme.background.textColor,
        centerTitle: true,
      ),
    );
  }

  return theme.copyWith(
    //* BOTTOM SHEET
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: theme.colorScheme.background,
      shape: theme.shapeBorder.round.top.xl,
    ),

    //* OUTLINED BUTTON
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: theme.colorScheme.primary,
      ),
    ),

    //* ELEVATED BUTTON
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: theme.colorScheme.primary,
        padding: kIsWeb
            ? const EdgeInsets.symmetric(vertical: 18, horizontal: 24)
            : const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        onPrimary: theme.colorScheme.onPrimary,
        shape: const StadiumBorder(),
      ),
    ),

    //* TEXT BUTTON
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: theme.colorScheme.primary,
        padding: kIsWeb
            ? const EdgeInsets.symmetric(vertical: 12, horizontal: 12)
            : const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      ),
    ),

    //* ALERT DIALOG
    dialogTheme: DialogTheme(
      shape: theme.shapeBorder.round.all.l,
    ),
    cardTheme: CardTheme(
      shape: theme.shapeBorder.round.all.l,
    ),
  );
}
