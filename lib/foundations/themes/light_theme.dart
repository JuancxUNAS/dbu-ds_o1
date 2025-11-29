import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../tokens/borders.dart';
import '../../tokens/colors.dart';
import '../../tokens/sizes.dart';
import '../../tokens/typography.dart';

/// Light theme configuration for O1 Design System
ThemeData getLightTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // Color Scheme
    colorScheme: const ColorScheme.light(
      primary: O1Colors.primary500,
      onPrimary: O1Colors.white,
      secondary: O1Colors.primary500,
      onSecondary: O1Colors.white,
      error: O1Colors.error500,
      surface: O1Colors.white,
      onSurface: O1Colors.black,
    ),

    // Typography
    textTheme: O1Typography.getTextTheme(
      textPrimary: O1Colors.black,
      textSecondary: O1Colors.gray500,
      textDisabled: O1Colors.gray400,
    ),

    // ElevatedButton Theme (Primary Button)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) {
            return O1Colors.gray400;
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
            return O1Colors.white;
          }
          return O1Colors.primary500;
        }),
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        side: WidgetStateProperty.resolveWith<BorderSide>((states) {
          if (states.contains(WidgetState.disabled)) {
            return const BorderSide(
              color: O1Colors.gray400,
              width: O1Borders.o1BorderWidth,
            );
          }
          return const BorderSide(
            color: O1Colors.primary500,
            width: O1Borders.o1BorderWidth,
          );
        }),
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.hovered)) {
            return O1Colors.primary500.withValues(alpha: 0.1);
          }
          if (states.contains(WidgetState.focused)) {
            return O1Colors.primary500.withValues(alpha: 0.2);
          }
          if (states.contains(WidgetState.pressed)) {
            return O1Colors.primary500.withValues(alpha: 0.3);
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
            return O1Colors.white;
          }
          return O1Colors.primary500;
        }),
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.hovered)) {
            return O1Colors.primary500.withValues(alpha: 0.1);
          }
          if (states.contains(WidgetState.focused)) {
            return O1Colors.primary500.withValues(alpha: 0.2);
          }
          if (states.contains(WidgetState.pressed)) {
            return O1Colors.primary500.withValues(alpha: 0.3);
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
          color: O1Colors.gray200,
          width: O1Borders.o1BorderWidth,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        borderSide: const BorderSide(
          color: O1Colors.primary500,
          width: O1Borders.o1BorderWidth,
        ),
      ),
      // Error state
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        borderSide: const BorderSide(
          color: O1Colors.error500,
          width: O1Borders.o1BorderWidth,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        borderSide: const BorderSide(
          color: O1Colors.error500,
          width: O1Borders.o1BorderWidth,
        ),
      ),
      // Disabled state
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        borderSide: const BorderSide(
          color: O1Colors.gray200,
          width: O1Borders.o1BorderWidth,
        ),
      ),
      fillColor: O1Colors.white,
      filled: true,
      labelStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: O1Colors.gray600,
      ),
      floatingLabelStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: O1Colors.gray400,
      ),
      hintStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: O1Colors.placeholderGray,
      ),
      errorStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: O1Colors.error500,
      ),
      helperStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: O1Colors.gray600,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hoverColor: O1Colors.primary500.withValues(alpha: 0.02),
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: O1Colors.white,
      foregroundColor: O1Colors.black,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: O1Colors.black,
      ),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: O1Colors.gray50,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(O1Borders.o1BorderRadius8),
        side: const BorderSide(
          color: O1Colors.gray200,
          width: O1Borders.o1BorderWidth,
        ),
      ),
    ),
  );
}
