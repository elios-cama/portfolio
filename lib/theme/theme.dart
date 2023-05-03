import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'text_theme.dart';

abstract class PortfolioTheme {
  static ThemeData theme(Brightness brightness) {
    Color mainColor = const Color.fromRGBO(255, 56, 92, 1);

    MaterialColor primarySwatch = MaterialColor(0xFFFF385C, {
      50: mainColor.withOpacity(.1),
      100: mainColor.withOpacity(.2),
      200: mainColor.withOpacity(.3),
      300: mainColor.withOpacity(.4),
      400: mainColor.withOpacity(.5),
      500: mainColor.withOpacity(.6),
      600: mainColor.withOpacity(.7),
      700: mainColor.withOpacity(.8),
      800: mainColor.withOpacity(.9),
      900: mainColor.withOpacity(1),
    });

    Color? scaffoldBackgroundColor = Colors.white;

    var appBarData = AppBarTheme(
      elevation: 0,
      backgroundColor: scaffoldBackgroundColor,
      shadowColor: Colors.transparent,
    );

    return ThemeData(
      primarySwatch: primarySwatch,
      textTheme: _textTheme,
      toggleButtonsTheme: const ToggleButtonsThemeData(borderRadius: BorderRadius.all(Radius.circular(9))),
      primaryColor: mainColor,
      appBarTheme: appBarData,
      cardTheme: CardTheme(
        margin: EdgeInsets.zero,
        color: const Color(0xFFF5F5F5),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      snackBarTheme: SnackBarThemeData(
          elevation: 0,
          backgroundColor: scaffoldBackgroundColor,
          contentTextStyle: const TextStyle(color: Colors.black)),
    );
  }
}
