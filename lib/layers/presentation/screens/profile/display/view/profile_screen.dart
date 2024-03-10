import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/layouts/layout.dart';
import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/nav_bar.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.owner});

  final bool owner;

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundColor: Palette.surfaceContainer,
                foregroundImage: NetworkImage(user.avatar),
                maxRadius: 50,
                minRadius: 50,
              ),
            ),
            Text(user.name,
                style: const TextStyle(
                    color: Palette.onSurface,
                    fontSize: 22,
                    fontWeight: FontWeight.w500)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(),
            ),
            buildFooterItem('E-mail', user.email),
            buildFooterItem('Телефон', user.phone),
          ],
        ),
      ),
      bottomNavigationBar: owner ? const NavBar() : null,
      drawer: const NavDrawer(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: owner
          ? null
          : IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.arrow_back)),
      title: const Text('Профиль', style: TextStyle(letterSpacing: -1)),
      titleSpacing: 0,
      centerTitle: false,
      actions: [
        if (owner)
          IconButton(
              onPressed: () {
                context.goNamed(Routes.editProfile);
              },
              icon: const Icon(Icons.edit_outlined))
      ],
    );
  }

  Widget buildFooterItem(String label, String value) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: const TextStyle(
                    color: Palette.onSurfaceVariant,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
            Text(value,
                style: const TextStyle(color: Palette.onSurface, fontSize: 16))
          ],
        ),
      ),
    );
  }
}
