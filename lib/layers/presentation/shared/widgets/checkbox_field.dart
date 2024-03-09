import 'package:flutter/material.dart';

class CheckboxField extends StatelessWidget {
  const CheckboxField(
      {super.key,
      required this.title,
      required this.value,
      required this.onChange,
      this.padding,
      this.alignment = CrossAxisAlignment.center,
      this.density = VisualDensity.standard});

  final Widget title;
  final bool value;
  final void Function(bool value) onChange;
  final EdgeInsets? padding;
  final CrossAxisAlignment alignment;
  final VisualDensity density;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: Row(
        crossAxisAlignment: alignment,
        children: [
          Checkbox(
            value: value,
            visualDensity: density,
            onChanged: (_) => onChange(!value),
          ),
          const SizedBox(width: 8),
          Expanded(child: title),
        ],
      ),
    );
  }
}
