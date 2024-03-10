import 'package:buy_and_period/layers/presentation/layouts/bottom_sheet_layout.dart';
import 'package:buy_and_period/layers/presentation/palette.dart';
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
            const Text(
              'Настройки',
              style: TextStyle(
                  color: Palette.onSurfaceVariant,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: const Text(
                'Готово',
                style: TextStyle(
                    color: Palette.primary, fontWeight: FontWeight.w500),
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
            const Text('Тёмная тема',
                style: TextStyle(color: Palette.onSurface, fontSize: 16)),
            Switch(
              value: false,
              onChanged: (_) {},
            )
          ],
        )
      ],
    ));
  }
}
