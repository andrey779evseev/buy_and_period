import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:flutter/material.dart';

class EmptyListView extends StatelessWidget {
  const EmptyListView({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final Widget description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 120, color: Palette.outlineVariant),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
                color: Palette.onSurface,
                fontSize: 22,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          DefaultTextStyle(
              textAlign: TextAlign.center,
              style: const TextStyle(color: Palette.onSurfaceVariant),
              child: description)
        ],
      ),
    );
  }
}
