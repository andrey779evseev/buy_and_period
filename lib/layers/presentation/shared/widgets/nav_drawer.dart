import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/router.dart';
import 'package:buy_and_period/layers/presentation/sheets/settings_bottom_sheet.dart';
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
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  buildHeader(context),
                  buildItem(context, Icons.settings_outlined, 'Настройки', () {
                    Scaffold.of(context).closeDrawer();
                    showModalBottomSheet(
                      context: context,
                      constraints: const BoxConstraints(maxHeight: 285),
                      builder: (context) => const SettingsBottomSheet(),
                    );
                  }),
                  buildItem(context, Icons.info_outline, 'О Приложении', () {
                    context.replaceNamed(Routes.about);
                  }),
                  const Divider(
                    indent: 16,
                    endIndent: 16,
                  ),
                  buildItem(context, Icons.output_outlined, 'Выйти', () {
                    context.replaceNamed(Routes.auth);
                  }),
                ],
              );
            }
          ),
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, IconData icon, String label,
      void Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(label,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Padding buildHeader(BuildContext context) {
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
          Builder(builder: (context) {
            return Text(
              'купи - и точка',
              style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.light
                      ? PaletteLight.onPrimaryFixedVariant
                      : PaletteDark.onPrimaryFixedVariant,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  height: 1),
            );
          })
        ],
      ),
    );
  }
}
