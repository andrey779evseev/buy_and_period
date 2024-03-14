import 'package:buy_and_period/layers/data/mock.dart';
import 'package:buy_and_period/layers/presentation/layouts/bottom_sheet_layout.dart';
import 'package:buy_and_period/layers/presentation/shared/widgets/checkbox_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CitiesBottomSheet extends StatefulWidget {
  const CitiesBottomSheet({
    super.key,
    required this.selected,
  });

  final List<Location> selected;

  @override
  State<CitiesBottomSheet> createState() => _CitiesBottomSheetState();
}

class _CitiesBottomSheetState extends State<CitiesBottomSheet> {
  List<Location> _selected = [];

  @override
  void initState() {
    _selected = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheetLayout(
        child: Column(
      children: [
        buildHeader(context),
        const SizedBox(height: 12),
        ...Location.values.map((l) => CheckboxField(
              title: Text(l.label),
              value: widget.selected.contains(l),
              density: VisualDensity.comfortable,
              onChange: (value) {
                setState(() {
                  if (value) {
                    _selected.add(l);
                  } else {
                    _selected.remove(l);
                  }
                });
              },
            ))
      ],
    ));
  }

  Row buildHeader(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: () {
              context.pop(_selected);
            },
            child: const Icon(Icons.arrow_back, size: 18)),
        const SizedBox(width: 12),
        Expanded(
          child: Text('Город',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _selected.clear();
            });
          },
          child: Text(
            'Сбросить',
            style:
                TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}