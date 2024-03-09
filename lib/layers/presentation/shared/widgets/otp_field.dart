import 'package:buy_and_period/layers/presentation/palette.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpField extends StatelessWidget {
  const OtpField(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      defaultPinTheme: PinTheme(
          height: 56,
          width: 80,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          textStyle:
              const TextStyle(color: Palette.onSurfaceVariant, fontSize: 16),
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Palette.outline, width: 1),
              borderRadius: BorderRadius.circular(16))),
      focusedPinTheme: PinTheme(
          height: 56,
          width: 80,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          textStyle:
              const TextStyle(color: Palette.onSurfaceVariant, fontSize: 16),
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Palette.primary, width: 2),
              borderRadius: BorderRadius.circular(16))),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      autofillHints: const [AutofillHints.oneTimeCode],
      autofocus: true,
      controller: controller,
      showCursor: false,
    );
  }
}
