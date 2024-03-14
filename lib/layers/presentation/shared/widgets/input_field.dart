import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField(
      {super.key,
      required this.controller,
      required this.decoration,
      this.keyboardType,
      this.autofillHints,
      this.obscureText});

  final TextEditingController controller;
  final InputDecoration decoration;
  final TextInputType? keyboardType;
  final List<String>? autofillHints;
  final bool? obscureText;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final focusNode = FocusNode();

  void updateComponent() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    focusNode.addListener(updateComponent);
  }

  @override
  Widget build(BuildContext context) {
    final decoration = widget.decoration.copyWith(
        labelStyle: TextStyle(
            color: focusNode.hasFocus
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onSurfaceVariant));

    return TextField(
      controller: widget.controller,
      focusNode: focusNode,
      decoration: decoration,
      keyboardType: widget.keyboardType,
      autofillHints: widget.autofillHints,
    );
  }

  @override
  void dispose() {
    focusNode.removeListener(updateComponent);
    super.dispose();
  }
}
