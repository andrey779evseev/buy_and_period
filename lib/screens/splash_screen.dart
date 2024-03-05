import 'package:buy_and_period/widgets/progress_bar.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                child: Image.asset('assets/logo.png'),
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
