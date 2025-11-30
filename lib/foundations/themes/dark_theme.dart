import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../tokens/borders.dart';
import '../../tokens/colors.dart';
import '../../tokens/sizes.dart';
import '../../tokens/typography.dart';

/// Dark theme configuration for O1 Design System
ThemeData getDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    // Color Scheme
    colorScheme: const ColorScheme.dark(
      primary: O1Colors.primary500,
      onPrimary: O1Colors.white,
      secondary: O1Colors.primary500,
      onSecondary: O1Colors.white,
      error: O1Colors.error400,
      surface: O1Colors.black,
      onSurface: O1Colors.white,
    ),

    // Typography
    textTheme: O1Typography.getTextTheme(
      textPrimary: O1Colors.white,
      textSecondary: O1Colors.gray400,
      textDisabled: O1Colors.gray500,
    ),

    // ElevatedButton Theme (Primary Button)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) {
            return O1Colors.gray600;
          }
          return O1Colors.primary500;
        }),
        foregroundColor: WidgetStateProperty.all(O1Colors.white),
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.hovered)) {
            return Colors.white.withValues(alpha: 0.1);
          }
          if (states.contains(WidgetState.focused)) {
            return Colors.white.withValues(alpha: 0.2);
          }
          if (states.contains(WidgetState.pressed)) {
            return Colors.white.withValues(alpha: 0.3);
          }
          return null;
        }),
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, O1Sizes.buttonHeightDefault),
        ),
        textStyle: WidgetStateProperty.all(
          GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
          ),
        ),
        elevation: WidgetStateProperty.all(0),
      ),
    ),

    // OutlinedButton Theme (Secondary Button)
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) {
            return O1Colors.gray400;
          }
          return O1Colors.primary400;
        }),
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        side: WidgetStateProperty.resolveWith<BorderSide>((states) {
          if (states.contains(WidgetState.disabled)) {
            return const BorderSide(
              color: O1Colors.gray600,
              width: O1Borders.o1BorderWidth,
            );
          }
          return const BorderSide(
            color: O1Colors.primary400,
            width: O1Borders.o1BorderWidth,
          );
        }),
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.hovered)) {
            return O1Colors.primary400.withValues(alpha: 0.1);
          }
          if (states.contains(WidgetState.focused)) {
            return O1Colors.primary400.withValues(alpha: 0.2);
          }
          if (states.contains(WidgetState.pressed)) {
            return O1Colors.primary400.withValues(alpha: 0.3);
          }
          return null;
        }),
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, O1Sizes.buttonHeightDefault),
        ),
        textStyle: WidgetStateProperty.all(
          GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
          ),
        ),
      ),
    ),

    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) {
            return O1Colors.gray400;
          }
          return O1Colors.primary400;
        }),
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.hovered)) {
            return O1Colors.primary400.withValues(alpha: 0.1);
          }
          if (states.contains(WidgetState.focused)) {
            return O1Colors.primary400.withValues(alpha: 0.2);
          }
          if (states.contains(WidgetState.pressed)) {
            return O1Colors.primary400.withValues(alpha: 0.3);
          }
          return null;
        }),
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, O1Sizes.buttonHeightDefault),
        ),
        textStyle: WidgetStateProperty.all(
          GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
          ),
        ),
      ),
    ),

    // InputDecoration Theme
    inputDecorationTheme: InputDecorationTheme(
      // Default state
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        borderSide: const BorderSide(
          color: O1Colors.gray600,
          width: O1Borders.o1BorderWidth,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        borderSide: const BorderSide(
          color: O1Colors.primary400,
          width: O1Borders.o1BorderWidth,
        ),
      ),
      // Error state
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        borderSide: const BorderSide(
          color: O1Colors.error400,
          width: O1Borders.o1BorderWidth,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        borderSide: const BorderSide(
          color: O1Colors.error400,
          width: O1Borders.o1BorderWidth,
        ),
      ),
      // Disabled state
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        borderSide: const BorderSide(
          color: O1Colors.gray600,
          width: O1Borders.o1BorderWidth,
        ),
      ),
      fillColor: O1Colors.black,
      filled: true,
      labelStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: O1Colors.gray300,
      ),
      floatingLabelStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: O1Colors.gray500,
      ),
      hintStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: O1Colors.gray400,
      ),
      errorStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: O1Colors.error400,
      ),
      helperStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: O1Colors.gray300,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hoverColor: O1Colors.primary400.withValues(alpha: 0.02),
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: O1Colors.black,
      foregroundColor: O1Colors.white,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: O1Colors.white,
      ),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: O1Colors.gray900,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        side: const BorderSide(
          color: O1Colors.gray600,
          width: O1Borders.o1BorderWidth,
        ),
      ),
    ),
  );
}
