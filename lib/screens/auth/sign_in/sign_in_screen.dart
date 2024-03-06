import 'package:buy_and_period/shared/palette.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var _passwordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 64,
            leading: IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Palette.outline,
                )),
            actions: [
              IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.translate,
                    color: Palette.outline,
                  )),
            ],
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
          body: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 100, horizontal: 16),
                    child: Column(
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Телефон',
                            prefixIcon: Icon(
                              Icons.local_phone_outlined,
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          autofillHints: [AutofillHints.telephoneNumber],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Пароль',
                              prefixIcon: const Icon(Icons.lock_outline),
                              suffixIcon: IconButton(
                                icon: Icon(_passwordVisible
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined),
                                onPressed: togglePasswordVisibility,
                              )),
                          obscureText: !_passwordVisible,
                          keyboardType: TextInputType.visiblePassword,
                          autofillHints: const [AutofillHints.password],
                        )
                      ],
                    ),
                  ),
                  Text('Signout'),
                ],
              ),
            ),
          ),
        ));
  }
}
