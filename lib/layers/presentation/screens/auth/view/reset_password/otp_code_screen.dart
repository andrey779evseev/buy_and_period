import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/layouts/auth_layout.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/otp_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OtpCodeScreen extends StatelessWidget {
  OtpCodeScreen({super.key});

  final _code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: 20);

    return AuthLayout(
        title: const Text('Введите код '),
        body: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Введите код, отправленный на +373 777 88 999'),
            ),
            separator,
            OtpField(_code),
            separator,
            FilledButton(
              onPressed: () {
                context.goNamed(Routes.newPassword);
              },
              child: const Text('Подтвердить'),
            ),
            separator,
            TextButton(
                onPressed: () {}, child: const Text('Отправить код повторно'))
          ],
        ));
  }
}
