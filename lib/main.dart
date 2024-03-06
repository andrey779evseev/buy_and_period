import 'package:buy_and_period/router.dart';
import 'package:buy_and_period/shared/palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Купи и точка',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Palette.primary),
        useMaterial3: true,
        brightness: Brightness.light,
        fontFamily: 'Roboto',
        iconTheme: const IconThemeData(size: 24),
        inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(
                color: Palette.onSurfaceVariant, fontWeight: FontWeight.w400),
            contentPadding: EdgeInsets.all(16),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))),
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
    );
  }
}
