import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/input_field.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final _phone = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(
      height: 20,
    );

    return Column(
      children: [
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
        PasswordField(
          label: 'Пароль',
          controller: _password,
          autofillHints: const [AutofillHints.password],
        ),
        separator,
        FilledButton(
          onPressed: () {},
          child: const Text('Войти'),
        ),
        separator,
        TextButton(
            onPressed: () {
              context.goNamed(Routes.forgetPassword);
            },
            child: const Text('Забыли пароль?'))
      ],
    );
  }
}
