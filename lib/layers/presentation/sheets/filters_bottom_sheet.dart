import 'package:buy_and_period/layers/presentation/layouts/bottom_sheet_layout.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/city_field.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FiltersBottomSheet extends StatelessWidget {
  FiltersBottomSheet({
    super.key,
  });

  final _from = TextEditingController();
  final _to = TextEditingController();

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
              'Фильтры',
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
                'Применить',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const CityField(),
        const SizedBox(height: 24),
        Text('Цена обьявления',
            style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: InputField(
                  controller: _from,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'От')),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: InputField(
                  controller: _to,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'До')),
            ),
          ],
        )
      ],
    ));
  }
}