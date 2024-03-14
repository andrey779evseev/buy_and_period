import 'package:flutter/material.dart';

abstract class OptionType {
  final String label;

  OptionType(this.label);
}

class SelectField<T extends OptionType> extends StatelessWidget {
  const SelectField({
    super.key,
    required this.value,
    required this.items,
    required this.onChange,
  });

  final T value;
  final List<T> items;
  final void Function(T newValue) onChange;

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
        style: const MenuStyle(
            maximumSize: MaterialStatePropertyAll(Size.fromHeight(256))),
        builder:
            (BuildContext context, MenuController controller, Widget? child) =>
                TextButton(
                  style: ButtonStyle(
                      overlayColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(79, 68, 73, 0.12)),
                      padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10)),
                      foregroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.onSurfaceVariant),
                      textStyle: MaterialStatePropertyAll(TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w500))),
                  onPressed: () {
                    if (controller.isOpen) {
                      controller.close();
                    } else {
                      controller.open();
                    }
                  },
                  child: Row(
                    children: [
                      Text(value.label,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      const SizedBox(width: 8),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
        menuChildren: items
            .map((p) => MenuItemButton(
                  style: const ButtonStyle(
                      textStyle:
                          MaterialStatePropertyAll(TextStyle(fontSize: 16)),
                      fixedSize: MaterialStatePropertyAll(Size.fromWidth(180))),
                  child: Text(p.label),
                  onPressed: () {
                    onChange(p);
                  },
                ))
            .toList());
  }
}
