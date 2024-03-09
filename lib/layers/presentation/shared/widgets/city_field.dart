import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:buy_and_period/layers/presentation/shared/sheets/city_bottom_sheet.dart';
import 'package:flutter/material.dart';

// temp
enum Location {
  Tiraspol(label: 'Тирасполь'),
  Bendery(label: 'Бендеры'),
  Grigoriopol(label: 'Григориополь'),
  Dubossary(label: 'Дубоссары'),
  Kamenka(label: 'Каменка'),
  Rybnitsa(label: 'Рыбница'),
  Slobodzeya(label: 'Слободзея'),
  Dnestrovsk(label: 'Днестровск');

  final String label;

  const Location({required this.label});
}

class CityField extends StatefulWidget {
  const CityField({
    super.key,
  });

  @override
  State<CityField> createState() => _CityFieldState();
}

class _CityFieldState extends State<CityField> {
  var _selected = [Location.Tiraspol];

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: 12);

    final items = _selected.map((s) => buildChip(s)).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Город',
          style: TextStyle(
              color: Palette.onSurface,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        separator,
        Wrap(
          spacing: 8,
          runSpacing: 0,
          children: items,
        ),
        if (items.isNotEmpty) separator,
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isDismissible: false,
              constraints: const BoxConstraints(maxHeight: 512),
              builder: (context) => CitiesBottomSheet(
                selected: _selected,
              ),
            ).then((selected) {
              setState(() {
                _selected = selected;
              });
            });
          },
          child: const Text('Добавить город',
              style: TextStyle(
                  color: Palette.primary, fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }

  Chip buildChip(Location s) {
    return Chip(
      label: Text(s.label),
      deleteIcon: const Icon(
        Icons.close,
        size: 18,
      ),
      onDeleted: () {
        setState(() {
          _selected.remove(s);
        });
      },
    );
  }
}