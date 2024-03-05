import 'package:buy_and_period/shared/palette.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                    padding:
                        EdgeInsets.symmetric(vertical: 100, horizontal: 16),
                    child: Text('ss'),
                  ),
                  Text('Signout'),
                ],
              ),
            ),
          ),
        ));
  }
}
