import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/layouts/auth_layout.dart';
import 'package:buy_and_period/layers/presentation/screens/auth/view/sign_in.dart';
import 'package:buy_and_period/layers/presentation/screens/auth/view/sing_up.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AuthLayout(
        onBack: () {
          context.goNamed(Routes.splash);
        },
        body: TabBarView(
          children: [
            SignIn(),
            SignUp(),
          ],
        ),
        bottom: const TabBar(
          tabs: [
            Tab(
              text: 'Вход',
            ),
            Tab(
              text: 'Регистрация',
            ),
          ],
        ),
      ),
    );
  }
}
