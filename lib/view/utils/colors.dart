import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFF008080);
const PrimaryColorLight = const Color(0xFF4cb0af);
const PrimaryColorDark = const Color(0xFF005354);

const SecondaryColor = const Color(0xFFb2dfdb);
const SecondaryColorLight = const Color(0xFFe5ffff);
const SecondaryColorDark = const Color(0xFF82ada9);

const Background = const Color(0xFFfffdf7);
const TextColor = const Color(0xFF004d40);

const DarkBackground = const Color(0xFF222727);

class MyTheme {
  static final ThemeData darkTheme = _buildDarkTheme();

  static ThemeData _buildDarkTheme() {
    final ThemeData base = ThemeData.dark();

    return base.copyWith(
      accentColor: SecondaryColor,
      accentColorBrightness: Brightness.dark,
      primaryColor: PrimaryColor,
      primaryColorDark: PrimaryColorDark,
      primaryColorLight: PrimaryColorLight,
      primaryColorBrightness: Brightness.dark,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: SecondaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      scaffoldBackgroundColor: DarkBackground,
      cardColor: DarkBackground,
      textSelectionColor: PrimaryColorLight,
      backgroundColor: Background,
      textTheme: base.textTheme.copyWith(
          subtitle1: base.textTheme.subtitle1!.copyWith(color: TextColor),
          bodyText1: base.textTheme.bodyText1!.copyWith(color: TextColor),
          bodyText2: base.textTheme.bodyText2!.copyWith(color: TextColor)),
    );
  }
}
