import 'package:flutter/material.dart';

abstract class Palette {
  static const white = Colors.white;
  static const black = Colors.black;

  static const primary = Color(0xFFDF3A76);
  static const primaryContainer = Color(0xFFFFD8EC);
  static const onPrimary = Color(0xFFFFFFFF);
  static const onPrimaryContainer = Color(0xFF37072A);
  static const onPrimaryFixedVariant = Color(0xFF6A3457);
  
  static const secondary = Color(0xFFB61263);
  static const secondaryContainer = Color(0xFFFFD9E2);
  static const onSecondary = Color(0xFFFFFFFF);

  static const outline = Color(0xFF81737A);
  static const outlineVariant = Color(0xFFD3C2C9);

  static const background = Color(0xFFFFF8F9);
  static const onBackground = Color(0xFF211A1D);

  static const surface = Color(0xFFFFF8F9);
  static const surfaceContainer = Color(0xFFF9EAEF);
  static const surfaceContainerLow = Color(0xFFFEF0F5);
  static const surfaceContainerHigh = Color(0xFFF3E5EA);
  static const surfaceContainerHighest = Color(0xFFEDDFE4);
  static const onSurface = Color(0xFF211A1D);
  static const onSurfaceVariant = Color(0xFF4F4449);

  static const error = Color(0xFFBA1A1A);
  static const onError = Color(0xFFFFFFFF);
}