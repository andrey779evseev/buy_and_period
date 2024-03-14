import 'package:buy_and_period/layers/presentation/layouts/layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout(
      {super.key,
      required this.body,
      this.onBack,
      this.title,
      this.bottom,
      this.withLeading = true,
      this.withPadding = true});

  final Widget body;
  final void Function()? onBack;
  final Widget? title;
  final PreferredSizeWidget? bottom;
  final bool withLeading;
  final bool withPadding;

  @override
  Widget build(BuildContext context) {
    final onBackFn = onBack ??
        () {
          context.pop();
        };

    return Layout(
      appBar: AppBar(
        leading: withLeading
            ? IconButton(
                onPressed: onBackFn,
                icon: const Icon(
                  Icons.arrow_back,
                ))
            : null,
        title: title,
        actions: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.translate,
              )),
          const SizedBox(width: 4)
        ],
        bottom: bottom,
      ),
      body: Padding(
        padding: withPadding
            ? const EdgeInsets.fromLTRB(16, 100, 16, 16)
            : const EdgeInsets.all(0),
        child: body,
      ),
    );
  }
}
