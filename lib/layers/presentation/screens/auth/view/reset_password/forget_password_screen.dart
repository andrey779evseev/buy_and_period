import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/input_field.dart';
import 'package:buy_and_period/layers/presentation/layouts/auth_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  final _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: 20);

    return AuthLayout(
        title: const Text('Восстановление пароля'),
        body: Column(
          children: [
            const Text(
                'Введите номер телефона, на который будет отправлен код для сброса пароля'),
            separator,
            InputField(
              controller: _phone,
              decoration: const InputDecoration(
                labelText: 'Телефон',
                prefixIcon: Icon(
                  Icons.local_phone_outlined,
                ),
              ),
              keyboardType: TextInputType.phone,
              autofillHints: const [AutofillHints.telephoneNumber],
            ),
            separator,
            FilledButton(
              onPressed: () {
                context.goNamed(Routes.otpCode);
              },
              child: const Text('Отправить'),
            ),
          ],
        ));
  }
}
