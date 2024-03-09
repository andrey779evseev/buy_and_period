import 'package:buy_and_period/layers/presentation/assets.dart';
import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      context.goNamed(Routes.auth);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 83),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 114,
                height: 114,
                child: Image.asset(Assets.logo),
              ),
              const SizedBox(
                height: 240,
              ),
              const CurvedCircularProgressIndicator(value: 0.7),
            ],
          ),
        ),
      )),
    );
  }
}
