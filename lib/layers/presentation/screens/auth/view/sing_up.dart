import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/checkbox_field.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/input_field.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _agreed = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(
      height: 20,
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
      child: Column(
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
            autofillHints: const [AutofillHints.newPassword],
          ),
          separator,
          PasswordField(
            label: 'Повторите пароль',
            controller: _password,
            autofillHints: const [AutofillHints.newPassword],
          ),
          separator,
          ValueListenableBuilder(
            valueListenable: _agreed,
            builder: (context, value, _) => CheckboxField(
              title: RichText(
                  text: TextSpan(
                      text: 'Я согласен ',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontSize: 16),
                      children: [
                    TextSpan(
                        text: 'с Правилами и условиями использования',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary))
                  ])),
              value: value,
              padding: const EdgeInsets.fromLTRB(0, 6, 0, 14),
              alignment: CrossAxisAlignment.end,
              onChange: (bool value) {
                _agreed.value = value;
              },
            ),
          ),
          separator,
          FilledButton(
            onPressed: () {
              context.replaceNamed(Routes.home);
            },
            child: const Text('Зарегистрироваться'),
          ),
        ],
      ),
    );
  }
}
