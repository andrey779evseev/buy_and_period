import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:flutter/material.dart';

final themeData = ThemeData(
    useMaterial3: true,
    // ------------------------------------------------------
    colorScheme: const ColorScheme(
        primary: Palette.primary,
        brightness: Brightness.light,
        background: Palette.background,
        error: Palette.error,
        onBackground: Palette.onBackground,
        onError: Palette.onError,
        onPrimary: Palette.onPrimary,
        onSecondary: Palette.onSecondary,
        onSurface: Palette.onSurface,
        secondary: Palette.secondary,
        surface: Palette.surface),
    // ------------------------------------------------------
    navigationBarTheme: const NavigationBarThemeData(
      elevation: 0,
      backgroundColor: Palette.surfaceContainer,
      indicatorColor: Palette.secondaryContainer,
    ),
    // ------------------------------------------------------
    scaffoldBackgroundColor: Palette.surface,
    // ------------------------------------------------------
    bottomSheetTheme: const BottomSheetThemeData(
      dragHandleColor: Palette.outline,
      backgroundColor: Palette.surfaceContainerLow,
      elevation: 0,
    ),
    // ------------------------------------------------------
    drawerTheme: const DrawerThemeData(
      width: 360,
    ),
    // ------------------------------------------------------
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Palette.primaryContainer,
    ),
    // ------------------------------------------------------
    iconTheme: const IconThemeData(size: 24, color: Palette.outline),
    // ------------------------------------------------------
    iconButtonTheme: const IconButtonThemeData(
        style:
            ButtonStyle(iconColor: MaterialStatePropertyAll(Palette.outline))),
    // ------------------------------------------------------
    tabBarTheme:
        const TabBarTheme(dividerColor: Palette.surfaceContainerHighest),
    // ------------------------------------------------------
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          color: Palette.onSurface,
          fontSize: 22,
          fontWeight: FontWeight.w500,
          letterSpacing: 0),
      toolbarHeight: 64,
      titleSpacing: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
    ),
    // ------------------------------------------------------
    checkboxTheme: const CheckboxThemeData(
      side: BorderSide(color: Palette.outline, width: 2),
    ),
    // ------------------------------------------------------
    inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(
            color: Palette.onSurfaceVariant, fontWeight: FontWeight.w400),
        prefixIconColor: Palette.outline,
        suffixIconColor: Palette.outline,
        iconColor: Palette.outline,
        contentPadding: EdgeInsets.all(16),
        focusColor: Palette.primary,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.primary, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.outline, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.outline, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16)))),
    // ------------------------------------------------------
    chipTheme: const ChipThemeData(
        padding: EdgeInsets.fromLTRB(12, 6, 8, 6),
        labelPadding: EdgeInsets.only(right: 4),
        deleteIconColor: Palette.onSurfaceVariant,
        labelStyle: TextStyle(
            color: Palette.onSurfaceVariant, fontWeight: FontWeight.w500)),
    // ------------------------------------------------------
    dividerTheme: const DividerThemeData(
      indent: 16,
      endIndent: 16,
      color: Palette.outlineVariant,
    ),
    // ------------------------------------------------------
    filledButtonTheme: const FilledButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(18)),
            minimumSize: MaterialStatePropertyAll(Size.fromHeight(56)))),
    // ------------------------------------------------------
    textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
                TextStyle(fontWeight: FontWeight.w500)),
            padding: MaterialStatePropertyAll(EdgeInsets.all(18)))));
