import 'package:flutter/material.dart';

class BottomSheetLayout extends StatelessWidget {
  const BottomSheetLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).colorScheme.outline),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: child,
        )
      ],
    );
  }
}
