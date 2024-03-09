import 'package:buy_and_period/layers/presentation/shared/widgets/input_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField(
      {super.key,
      required this.label,
      required this.controller,
      required this.autofillHints});

  final String label;
  final TextEditingController controller;
  final List<String> autofillHints;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  var _visiblePassword = false;

  void toggleVisiblePassword() {
    setState(() {
      _visiblePassword = !_visiblePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InputField(
      controller: widget.controller,
      decoration: InputDecoration(
          labelText: widget.label,
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            icon: Icon(_visiblePassword
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined),
            onPressed: toggleVisiblePassword,
          )),
      obscureText: !_visiblePassword,
      keyboardType: TextInputType.visiblePassword,
      autofillHints: widget.autofillHints,
    );
  }
}
