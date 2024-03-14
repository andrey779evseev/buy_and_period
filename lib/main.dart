import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('ru', null).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: themeData,
      builder: (context, theme) => MaterialApp.router(
        title: 'Купи и точка',
        builder: (context, child) => child!,
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: themeData,
        darkTheme: darkThemeData,
      ),
    );
  }
}
