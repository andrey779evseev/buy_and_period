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
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Palette.primary),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
    );
  }
}
