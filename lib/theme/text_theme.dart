part of 'theme.dart';

TextTheme get _textTheme {
  return TextTheme(
    headline1: GoogleFonts.raleway(
      //H1 Style Figma
      fontWeight: FontWeight.w900,
      fontSize: 26,
      color: const Color(0xFF000000),
    ),
    headline2: GoogleFonts.raleway(
      //H1 Figma
      fontWeight: FontWeight.w700,
      fontSize: 22,
      color: const Color(0xFF000000),
    ),
    headline3: GoogleFonts.raleway(
      //H2 Figma
      fontWeight: FontWeight.w600,
      fontSize: 19,
      height: 1.3,
      color: const Color(0xFF000000),
    ),
    headline4: GoogleFonts.raleway(
      //H3 Figma
      fontWeight: FontWeight.w500,
      fontSize: 17,
      color: const Color(0xFF000000),
    ),
    headline5: GoogleFonts.raleway(
      //H4 Figma
      fontWeight: FontWeight.w900,
      fontSize: 42,
      color: const Color(0xFF000000),
    ),
    button: GoogleFonts.raleway(
      //Ag Boutons Figma
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: const Color(0xFF000000),
    ),
    overline: GoogleFonts.raleway(
      //Ag Toggle Select Figma
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: const Color(0xFF000000),
    ),
    bodyText1: GoogleFonts.raleway(
      //Ag Annotations Figma
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: const Color(0xFFB3B5B8),
    ),
    bodyText2: GoogleFonts.raleway(
      //Ag Annotations 8 Figma
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: const Color(0xFF000000),
    ),
    caption: GoogleFonts.raleway(
      //Ag Texte Courant Figma
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.2,
      color: const Color(0xFF000000),
    ),
  );
}