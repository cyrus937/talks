import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFF075E54);
const PrimaryColorLight = const Color(0xFF128C7E);
const PrimaryColorDark = const Color(0xFF25D366);

const SecondaryColor = const Color(0xFFDCF8C6);
const LinkColor = const Color(0xFF34B7F1);
const ChatBackgroundColorLight = const Color(0xFFECE5DD);

const Background = const Color(0xFFfffdf7);
const TextTitleColor = const Color(0xFF128C7E);
const TextColor = const Color(0xFFffffff);

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
          subtitle1: base.textTheme.subtitle1!.copyWith(color: TextTitleColor),
          bodyText1: base.textTheme.bodyText1!.copyWith(color: TextColor),
          bodyText2: base.textTheme.bodyText2!.copyWith(color: TextColor)),
    );
  }
}
