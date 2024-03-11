import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/layouts/layout.dart';
import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  final _name = TextEditingController(text: 'Георгий');
  final _surname = TextEditingController(text: 'Васильков');
  final _email = TextEditingController(text: 'examples@yourdomain.com');
  final _phone = TextEditingController(text: '+ 373 777 2 54 97');

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: CircleAvatar(
                  backgroundColor: Palette.surfaceContainer,
                  foregroundImage: NetworkImage(user.avatar),
                  maxRadius: 50,
                  minRadius: 50,
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(Icons.edit_outlined,
                          color: Palette.onPrimary)))
            ]),
            const SizedBox(height: 16),
            InputField(
              controller: _name,
              decoration: const InputDecoration(labelText: 'Имя'),
              keyboardType: TextInputType.text,
              autofillHints: const [AutofillHints.givenName],
            ),
            const SizedBox(height: 16),
            InputField(
              controller: _surname,
              decoration: const InputDecoration(labelText: 'Фамилия'),
              keyboardType: TextInputType.text,
              autofillHints: const [AutofillHints.familyName],
            ),
            const SizedBox(height: 16),
            InputField(
              controller: _email,
              decoration: const InputDecoration(labelText: 'E-mail'),
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
            ),
            const SizedBox(height: 16),
            InputField(
              controller: _phone,
              decoration: const InputDecoration(labelText: 'Телефон'),
              keyboardType: TextInputType.phone,
              autofillHints: const [AutofillHints.telephoneNumber],
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back)),
      title: const Text('Редактирование профиля',
          style: TextStyle(letterSpacing: -1)),
      titleSpacing: 0,
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.check)),
        const SizedBox(width: 4)
      ],
    );
  }
}
