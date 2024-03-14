import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:flutter/material.dart';

final themeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    // ------------------------------------------------------
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: PaletteLight.primary,
      primaryContainer: PaletteLight.primaryContainer,
      background: PaletteLight.background,
      error: PaletteLight.error,
      onBackground: PaletteLight.onBackground,
      onError: PaletteLight.onError,
      onPrimary: PaletteLight.onPrimary,
      onPrimaryContainer: PaletteLight.onPrimaryContainer,
      onSecondary: PaletteLight.onSecondary,
      onSurface: PaletteLight.onSurface,
      onSurfaceVariant: PaletteLight.onSurfaceVariant,
      secondary: PaletteLight.secondary,
      outline: PaletteLight.outline,
      outlineVariant: PaletteLight.outlineVariant,
      secondaryContainer: PaletteLight.secondaryContainer,
      surface: PaletteLight.surface,
    ),
    // ------------------------------------------------------
    navigationBarTheme: const NavigationBarThemeData(
      elevation: 0,
      backgroundColor: PaletteLight.surfaceContainer,
      indicatorColor: PaletteLight.secondaryContainer,
    ),
    // ------------------------------------------------------
    scaffoldBackgroundColor: PaletteLight.surface,
    // ------------------------------------------------------
    bottomSheetTheme: const BottomSheetThemeData(
      dragHandleColor: PaletteLight.outline,
      backgroundColor: PaletteLight.surfaceContainerLow,
      elevation: 0,
    ),
    // ------------------------------------------------------
    drawerTheme: const DrawerThemeData(
      width: 360,
    ),
    // ------------------------------------------------------
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: PaletteLight.primaryContainer,
    ),
    // ------------------------------------------------------
    iconTheme: const IconThemeData(size: 24, color: PaletteLight.outline),
    // ------------------------------------------------------
    iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
            iconColor: MaterialStatePropertyAll(PaletteLight.outline))),
    // ------------------------------------------------------
    menuTheme: const MenuThemeData(
      style: MenuStyle(
          backgroundColor:
              MaterialStatePropertyAll(PaletteLight.surfaceContainer),
          elevation: MaterialStatePropertyAll(0)),
    ),
    // ------------------------------------------------------
    tabBarTheme:
        const TabBarTheme(dividerColor: PaletteLight.surfaceContainerHighest),
    // ------------------------------------------------------
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          color: PaletteLight.onSurface,
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
      side: BorderSide(color: PaletteLight.outline, width: 2),
    ),
    // ------------------------------------------------------
    inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(
            color: PaletteLight.onSurfaceVariant, fontWeight: FontWeight.w400),
        prefixIconColor: PaletteLight.outline,
        suffixIconColor: PaletteLight.outline,
        iconColor: PaletteLight.outline,
        contentPadding: EdgeInsets.all(16),
        focusColor: PaletteLight.primary,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: PaletteLight.primary, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: PaletteLight.outline, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: PaletteLight.outline, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16)))),
    // ------------------------------------------------------
    chipTheme: const ChipThemeData(
        padding: EdgeInsets.fromLTRB(12, 6, 8, 6),
        labelPadding: EdgeInsets.only(right: 4),
        deleteIconColor: PaletteLight.onSurfaceVariant,
        labelStyle: TextStyle(
            color: PaletteLight.onSurfaceVariant, fontWeight: FontWeight.w500)),
    // ------------------------------------------------------
    dividerTheme: const DividerThemeData(
      color: PaletteLight.outlineVariant,
    ),
    // ------------------------------------------------------
    switchTheme: const SwitchThemeData(
      thumbColor: MaterialStatePropertyAll(PaletteLight.outline),
      trackColor:
          MaterialStatePropertyAll(PaletteLight.surfaceContainerHighest),
      trackOutlineColor: MaterialStatePropertyAll(PaletteLight.outline),
      trackOutlineWidth: MaterialStatePropertyAll(2),
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

final darkThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: PaletteDark.primary,
      primaryContainer: PaletteDark.primaryContainer,
      background: PaletteDark.background,
      error: PaletteDark.error,
      onBackground: PaletteDark.onBackground,
      onError: PaletteDark.onError,
      onPrimary: PaletteDark.onPrimary,
      onPrimaryContainer: PaletteDark.onPrimaryContainer,
      onSecondary: PaletteDark.onSecondary,
      onSurface: PaletteDark.onSurface,
      onSurfaceVariant: PaletteDark.onSurfaceVariant,
      secondary: PaletteDark.secondary,
      outline: PaletteDark.outline,
      outlineVariant: PaletteDark.outlineVariant,
      secondaryContainer: PaletteDark.secondaryContainer,
      surface: PaletteDark.surface,
    ),
    // ------------------------------------------------------
    navigationBarTheme: const NavigationBarThemeData(
      elevation: 0,
      backgroundColor: PaletteDark.surfaceContainer,
      indicatorColor: PaletteDark.secondaryContainer,
    ),
    // ------------------------------------------------------
    scaffoldBackgroundColor: PaletteDark.surface,
    // ------------------------------------------------------
    bottomSheetTheme: const BottomSheetThemeData(
      dragHandleColor: PaletteDark.outline,
      backgroundColor: PaletteDark.surfaceContainerLow,
      elevation: 0,
    ),
    // ------------------------------------------------------
    drawerTheme: const DrawerThemeData(
      width: 360,
    ),
    // ------------------------------------------------------
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: PaletteDark.primaryContainer,
    ),
    // ------------------------------------------------------
    iconTheme: const IconThemeData(size: 24, color: PaletteDark.outline),
    // ------------------------------------------------------
    iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
            iconColor: MaterialStatePropertyAll(PaletteDark.outline))),
    // ------------------------------------------------------
    menuTheme: const MenuThemeData(
      style: MenuStyle(
          backgroundColor:
              MaterialStatePropertyAll(PaletteDark.surfaceContainer),
          elevation: MaterialStatePropertyAll(0)),
    ),
    // ------------------------------------------------------
    tabBarTheme:
        const TabBarTheme(dividerColor: PaletteDark.surfaceContainerHighest),
    // ------------------------------------------------------
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          color: PaletteDark.onSurface,
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
      side: BorderSide(color: PaletteDark.outline, width: 2),
    ),
    // ------------------------------------------------------
    inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(
            color: PaletteDark.onSurfaceVariant, fontWeight: FontWeight.w400),
        prefixIconColor: PaletteDark.outline,
        suffixIconColor: PaletteDark.outline,
        iconColor: PaletteDark.outline,
        contentPadding: EdgeInsets.all(16),
        focusColor: PaletteDark.primary,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: PaletteDark.primary, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: PaletteDark.outline, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: PaletteDark.outline, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(16)))),
    // ------------------------------------------------------
    chipTheme: const ChipThemeData(
        padding: EdgeInsets.fromLTRB(12, 6, 8, 6),
        labelPadding: EdgeInsets.only(right: 4),
        deleteIconColor: PaletteDark.onSurfaceVariant,
        labelStyle: TextStyle(
            color: PaletteDark.onSurfaceVariant, fontWeight: FontWeight.w500)),
    // ------------------------------------------------------
    dividerTheme: const DividerThemeData(
      color: PaletteDark.outlineVariant,
    ),
    // ------------------------------------------------------
    switchTheme: const SwitchThemeData(
      thumbColor: MaterialStatePropertyAll(PaletteDark.outline),
      trackColor: MaterialStatePropertyAll(PaletteDark.surfaceContainerHighest),
      trackOutlineColor: MaterialStatePropertyAll(PaletteDark.outline),
      trackOutlineWidth: MaterialStatePropertyAll(2),
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
