import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/shared/layouts/auth_layout.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});

  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: 20);

    return AuthLayout(
        title: const Text('Новый пароль'),
        body: Column(
          children: [
            const Text(
                'Задайте новый пароль и подтвердите его для завершения сброса.'),
            separator,
            PasswordField(
                label: 'Пароль',
                controller: _password,
                autofillHints: const [AutofillHints.newPassword]),
            separator,
            PasswordField(
                label: 'Повторите пароль',
                controller: _confirmPassword,
                autofillHints: const [AutofillHints.newPassword]),
            separator,
            FilledButton(
              onPressed: () {
                context.goNamed(Routes.auth);
              },
              child: const Text('Сохранить новый пароль'),
            ),
          ],
        ));
  }
}
