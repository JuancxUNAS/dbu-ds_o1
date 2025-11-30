import 'package:flutter/material.dart';

/// Base color tokens (primitives) for the O1 Design System
///
/// These are the raw color values organized in scales.
/// They should not be used directly in components unless necessary.
class O1Colors {
  O1Colors._();

  // Primary Palette
  /// Primary color shade 50 - Lightest
  static const Color primary50 = Color(0xFFE0F7F4);

  /// Primary color shade 100
  static const Color primary100 = Color(0xFFB2EBE4);

  /// Primary color shade 200
  static const Color primary200 = Color(0xFF80DED3);

  /// Primary color shade 300
  static const Color primary300 = Color(0xFF4DD0C1);

  /// Primary color shade 400
  static const Color primary400 = Color(0xFF26C5B0);

  /// Primary color shade 500 - Main primary color
  static const Color primary500 = Color(0xFF1ABB9C);

  /// Primary color shade 600
  static const Color primary600 = Color(0xFF169E84);

  /// Primary color shade 700
  static const Color primary700 = Color(0xFF12826D);

  /// Primary color shade 800
  static const Color primary800 = Color(0xFF0E6656);

  /// Primary color shade 900 - Darkest
  static const Color primary900 = Color(0xFF0A4A3F);

  // Gray Palette (Cool Gray - con tinte verde azulado)
  /// Gray color shade 50 - Lightest (ideal para backgrounds de cards)
  static const Color gray50 = Color(0xFFF7F9F9);

  /// Gray color shade 100
  static const Color gray100 = Color(0xFFF0F4F4);

  /// Gray color shade 200 (ideal para bordes de cards)
  static const Color gray200 = Color(0xFFE2E8E8);

  /// Gray color shade 300
  static const Color gray300 = Color(0xFFCBD5D5);

  /// Gray color shade 400
  static const Color gray400 = Color(0xFF94A3A3);

  /// Custom placeholder color (between gray400 and gray300)
  static const Color placeholderGray = Color(0xFFADAEBC);

  /// Gray color shade 500 - Middle gray
  static const Color gray500 = Color(0xFF647474);

  /// Gray color shade 600
  static const Color gray600 = Color(0xFF475555);

  /// Gray color shade 700
  static const Color gray700 = Color(0xFF334141);

  /// Gray color shade 800
  static const Color gray800 = Color(0xFF1E2929);

  /// Gray color shade 900 - Darkest
  static const Color gray900 = Color(0xFF0F1717);

  // Error Palette
  /// Error color shade 50 - Lightest
  static const Color error50 = Color(0xFFFEF2F2);

  /// Error color shade 100
  static const Color error100 = Color(0xFFFEE2E2);

  /// Error color shade 200
  static const Color error200 = Color(0xFFFECACA);

  /// Error color shade 300
  static const Color error300 = Color(0xFFFCA5A5);

  /// Error color shade 400
  static const Color error400 = Color(0xFFF87171);

  /// Error color shade 500 - Main error color
  static const Color error500 = Color(0xFFEF4444);

  /// Error color shade 600
  static const Color error600 = Color(0xFFDC2626);

  /// Error color shade 700
  static const Color error700 = Color(0xFFB91C1C);

  /// Error color shade 800
  static const Color error800 = Color(0xFF991B1B);

  /// Error color shade 900 - Darkest
  static const Color error900 = Color(0xFF7F1D1D);

  // Pure Colors
  /// Pure white
  static const Color white = Color(0xFFFFFFFF);

  /// Pure black
  static const Color black = Color(0xFF020b09);
}
