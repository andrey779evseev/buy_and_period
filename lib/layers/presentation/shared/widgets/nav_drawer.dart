import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
          child: Column(
            children: [
              buildHeader(),
              buildItem(Icons.settings_outlined, 'Настройки', () {}),
              buildItem(Icons.info_outline, 'О Приложении', () {
                context.replaceNamed(Routes.about);
              }),
              const Divider(),
              buildItem(Icons.output_outlined, 'Выйти', () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(IconData icon, String label, void Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(label,
                style: const TextStyle(
                    color: Palette.onSurfaceVariant, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Padding buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            'assets/images/logo-simple.png',
            width: 40,
            height: 30,
          ),
          const SizedBox(width: 8),
          const Text(
            'купи - и точка',
            style: TextStyle(
                color: Palette.onPrimaryFixedVariant,
                fontSize: 20,
                fontWeight: FontWeight.w900,
                height: 1),
          )
        ],
      ),
    );
  }
}
