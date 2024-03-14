import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:buy_and_period/layers/presentation/layouts/bottom_sheet_layout.dart';
import 'package:buy_and_period/layers/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsBottomSheet extends StatelessWidget {
  const SettingsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheetLayout(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Настройки',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Text(
                'Готово',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        DropdownButtonFormField(
          items: ['Русский', 'Английский'].map((l) {
            return DropdownMenuItem(value: l, child: Text(l));
          }).toList(),
          onChanged: (newValue) {},
          value: 'Русский',
          decoration: const InputDecoration(
            labelText: 'Язык приложения',
          ),
        ),
        const SizedBox(height: 16),
        const Divider(),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Тёмная тема',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 16)),
            ThemeSwitcher.withTheme(
              builder: (context, switcher, theme) => Switch(
                value: theme.brightness == Brightness.dark,
                onChanged: (_) {
                  switcher.changeTheme(
                    theme: theme.brightness == Brightness.light
                        ? darkThemeData
                        : themeData,
                  );
                  context.pop();
                },
              ),
            )
          ],
        )
      ],
    ));
  }
}
